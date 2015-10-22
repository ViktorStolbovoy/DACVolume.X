
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <xc.h>
#include <p18f97j60.h>
#include "Device.h"
#include "SLCD/slcd.h"
#include <tcpip.h>


uint32_t s_numTicksPrev;
uint8_t s_numTicksDiff[256];
uint16_t s_numTicksDiffIdx = 0;
uint8_t s_prevIRPort = 1;

volatile uint8_t s_irLearn = 0;
volatile uint8_t s_irCodeBitIdx = 1;
volatile uint8_t s_irCodeByteIdx = 0;
volatile uint8_t s_irCode[16];
uint32_t s_lastIRCodeReceived = 0;
//77 bits 77 => 01001-101
#define IR_CODE_BITS 5
#define IR_CODE_BYTES 9



const uint8_t IR_VOLUME_UP[] =      {0x57, 0x01, 0x50, 0x01, 0x00, 0x04, 0x51, 0x51 ,0x04}; // {0x11, 0x10, 0x50, 0x05};
const uint8_t IR_VOLUME_DOWN[] =    {0x57, 0x01, 0x50, 0x01, 0x010, 0x01, 0x41, 0x54 ,0x04}; // {0x11, 0x40, 0x50, 0x05};
const uint8_t IR_POWER_ON[] =       {0x8B, 0x08, 0x02}; //, 0x2C, 0x22, 0x08, 0xB0, 0x88, 0x20};
const uint8_t IR_POWER_OFF[] =      {0x83, 0x08, 0x02}; //, 0x0C, 0x22, 0x08, 0x30, 0x88, 0x20};


inline void InitrIR(void)
{
    s_prevIRPort = IR_PORT;
    memset(&s_numTicksDiff, 0, sizeof(s_numTicksDiff));
    memset(&s_irCode, 0, sizeof(s_irCode));
    s_irCodeBitIdx = 0b00000001;
    s_irCodeByteIdx = 0;
}

inline void ReInitTimer(void)
{
    T1CONbits.RD16 = 1;     //16 bit load mode
    T1CONbits.T1CKPS0 = 1;  //Prescaller = 8;
    T1CONbits.T1CKPS1 = 1;
    //10ms->100Hz-> Need to divide Ft by 62500->Prescaller=0;Timer = 0xFFFF - 7812d=57724=>E1C7
    TMR1L = 0xC7;
    TMR1L = 0xE1;
    T1CONbits.TMR1ON = 1;
    PIE1bits.TMR1IE = 1;
}

inline void ProcessIRCode()
{
    uint32_t numTick = TickGet();
    //((25000kHz / 4) / 256) -> 10000 => ~2.5Hz => 400ms
    if (!memcmp(&IR_POWER_ON, &s_irCode, sizeof(IR_POWER_ON)))
    {
        PowerOn();
        return;
    }

    if (!memcmp(&IR_POWER_OFF, &s_irCode, sizeof(IR_POWER_OFF)))
    {
        PowerOff();
        return;
    }

    uint8_t delta = 0; //0.125dB
    if (!memcmp(&IR_VOLUME_UP, &s_irCode, sizeof(IR_VOLUME_UP)))
    {
        delta = 1; //0.125dB
    }
    else if (!memcmp(&IR_VOLUME_DOWN, &s_irCode, sizeof(IR_VOLUME_DOWN)))
    {
        delta = -1; //0.125dB
    }
    else
    {
        return;
    }

    if (numTick - s_lastIRCodeReceived < 10000) delta <<= 3; //1dB
    ChangeMasterVolume(delta);
    s_lastIRCodeReceived = numTick;
}

inline void IRTimerInt(void)
{
    T1CONbits.TMR1ON = 0;
    PIE1bits.TMR1IE = 0;
    ProcessIRCode();
    if (!s_irLearn)
    {
        memset(&s_irCode, 0, sizeof(s_irCode));
        s_irCodeBitIdx = 0b00000001;
        s_irCodeByteIdx = 0;
    }
    PIR1bits.TMR1IF = 0;
}

void ProcessIRInt(void)
{
    if (IR_PORT != s_prevIRPort && s_irCodeByteIdx < sizeof(s_irCode))
    {
        ReInitTimer();
        s_prevIRPort = IR_PORT;
        uint32_t numTicks = TickGet();
        uint32_t diff = numTicks - s_numTicksPrev;
#ifdef IR_DISCOVERY
        if (s_numTicksDiffIdx < 256ul)
        {
            if (s_numTicksDiffIdx)
            {
                if (diff > 0x7F) diff = 0x7F;
                if (s_prevIRPort) { diff |= 0x80; }
                s_numTicksDiff[s_numTicksDiffIdx - 1] = diff;
            }
            s_numTicksDiffIdx ++;
        }
#else
        if (s_irCodeByteIdx < sizeof(s_irCode))
        {
            if (diff > 0x15)
            {
                s_irCode[s_irCodeByteIdx] |= s_irCodeBitIdx;
            }

            if (s_irCodeBitIdx == 0b10000000)
            {
                s_irCodeBitIdx = 0b00000001;
                s_irCodeByteIdx ++;
            }
            else
            {
                s_irCodeBitIdx <<= 1;
            }
#endif
            IR_RVC_LED ^= 1;
        }
        s_numTicksPrev = numTicks;
    }
}


