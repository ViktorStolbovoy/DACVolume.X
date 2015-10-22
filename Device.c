#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <xc.h>
#include <p18f97j60.h>
#include "Device.h"
#include "LCD.h"
#include "Persistence.h"


const uint16_t LOGS[48] = {
        /*0*/   0x0FFF,
        /*1*/   0x0FC4,
        /*2*/   0x0F8B,
        /*3*/   0x0F52,
        /*4*/   0x0F1A,
        /*5*/   0x0EE3,
        /*6*/   0x0EAC,
        /*7*/   0x0E77,
        /*8*/   0x0E42,
        /*9*/   0x0E0E,
        /*10*/  0x0DDA,
        /*11*/  0x0DA7,
        /*12*/  0x0D76,
        /*13*/  0x0D44,
        /*14*/  0x0D14,
        /*15*/  0x0CE4,
        /*16*/  0x0CB5,
        /*17*/  0x0C86,
        /*18*/  0x0C58,
        /*19*/  0x0C2B,
        /*20*/  0x0BFF,
        /*21*/  0x0BD3,
        /*22*/  0x0BA8,
        /*23*/  0x0B7D,
        /*24*/  0x0B53,
        /*25*/  0x0B2A,
        /*26*/  0x0B01,
        /*27*/  0x0AD9,
        /*28*/  0x0AB1,
        /*29*/  0x0A8A,
        /*30*/  0x0A63,
        /*31*/  0x0A3D,
        /*32*/  0x0A18,
        /*33*/  0x09F3,
        /*34*/  0x09CE,
        /*35*/  0x09AB,
        /*36*/  0x0987,
        /*37*/  0x0964,
        /*38*/  0x0942,
        /*39*/  0x0920,
        /*40*/  0x08FF,
        /*41*/  0x08DE,
        /*42*/  0x08BD,
        /*43*/  0x089D,
        /*44*/  0x087E,
        /*45*/  0x085F,
        /*46*/  0x0840,
        /*47*/  0x0822
    };

uint16_t DbToCode(uint16_t volume)
        {
            double k = 1;
            if (volume < 192)
            {
                if (volume < 96)
                {
                    if (volume >= 48)
                    {
                        k = 0.501187233627272;
                        volume -= 48;
                    }
                }
                else
                {
                    if (volume < 144)
                    {
                         k = 0.251188643150958;
                        volume -= 96;
                    }
                    else
                    {
                        k =  0.125892541179417;
                        volume -= 144;
                    }
                }
            }
            else
            {
                if (volume < 384)
                {
                    if (volume < 288)
                    {
                        if (volume < 240)
                        {
                            k =  0.0630957344480193;
                            volume -= 192;
                        }
                        else
                        {
                            k =  0.0316227766016838;
                            volume -= 240;
                        }
                    }
                    else
                    {
                        if (volume < 336)
                        {
                            k = 0.0158489319246111;
                            volume -= 288;
                        }
                        else
                        {
                            k =  0.0079432823472428;
                            volume -= 336;
                        }
                    }
                }
                else
                {
                    if (volume < 480)
                    {
                        if (volume < 432)
                        {
                            k = 0.00398107170553497;
                            volume -= 384;
                        }
                        else
                        {
                            k = 0.00199526231496888;
                            volume -= 432;
                        }
                    }
                    else
                    {
                        k =  0.001;
                        volume -= 480;
                    }
                }
            }
            
            //value = (-20 * ln (res / 0xFFFFFF)) * 8;
            if (volume > 47) return 0;
            return (uint16_t)(LOGS[volume] * k + 0.5);
        }


/*uint16_t DbToCode(uint16_t volume)
{
    double val = volume;
    val = -val / (20.0*8);
    val = pow(10.0, val);
    val = val * 0x0FFF;
    return (uint16_t)(val);
}*/


inline void UpdateMasterVolume(void)
{
    double dvol = -s_dacSettings.Volume / 8.0;

    uint8_t i = sprintf( &dispbuf1,  "Volume %7.3fdB", dvol); //Send to LCD
    for (;i<16;i++) dispbuf1[i] = ' ';
    dispbuf1[16] = 0;
    RefreshLine1();

    SendVolumeToDevice();
}

void ChangeMasterVolume(signed char d)
{
    uint8_t prev = s_dacSettings.Volume;
    s_dacSettings.Volume += d;
    if (d < 0 && prev < s_dacSettings.Volume) s_dacSettings.Volume = 0; //Underflow
    if (d > 0 && prev > s_dacSettings.Volume) s_dacSettings.Volume = 0xFF; //Overflow

    UpdateMasterVolume();
}


/*union UINT16TO8 {
    uint16_t intval;
    struct {
      uint8_t lo; 
      uint8_t hi; 
    };
};*/

void SendDataToDeviceCh(uint8_t offset)
{
   uint16_t values[8];

   for(uint8_t i = 0; i < 8; i++)
   {
       uint16_t v = ((uint16_t)s_dacSettings.ChannelScaling[i + offset]) + s_dacSettings.Volume;
       values[i] = DbToCode(v);
   }
   
   uint16_t mask = 0x0800;
   //uint8_t idx = 0;
   while(mask > 0)
   {
       DATA_SYNC = 0;
       if (values[0] & mask) DATA_CH1 = 1; else DATA_CH1 = 0;
       if (values[1] & mask) DATA_CH2 = 1; else DATA_CH2 = 0;
       if (values[2] & mask) DATA_CH3 = 1; else DATA_CH3 = 0;
       if (values[3] & mask) DATA_CH4 = 1; else DATA_CH4 = 0;
       if (values[4] & mask) DATA_CH5 = 1; else DATA_CH5 = 0;
       if (values[5] & mask) DATA_CH6 = 1; else DATA_CH6 = 0;
       if (values[6] & mask) DATA_CH7 = 1; else DATA_CH7 = 0;
       if (values[7] & mask) DATA_CH8 = 1; else DATA_CH8 = 0;
       DATA_SYNC = 1; //Write to DAC registers
       //if (values[0] & mask) dispbuf2[idx] = '1'; else dispbuf2[idx] = '0';
       //idx ++;
       mask >>=1;
   }
   //RefreshLine2();
}


void SendVolumeToDevice(void)
{
    DATA_LD_GRP1 = 1;
    SendDataToDeviceCh(0);
    DATA_LD_GRP1 = 0;
    DATA_LD_GRP2 = 1;
    SendDataToDeviceCh(8);
    DATA_LD_GRP2 = 0;
}

void UpdateSampleRate(void)
{
    /*
          2     3     4
44.1      0     0     0
48.0      0     0     1
88.2      0     1     0
96.0      0     1     1
176.4     1     0     0
192.0     1     0     1
     */

    const char * srStr;
    switch(s_dacSettings.SampleRate)
    {
        case 0: srStr = "S/R:  44.1kHz   ";
            FQ48 = 0;
            FQ0 = 0;
            FQ1 = 0;
            break;
        case 1: srStr = "S/R:  48.0kHz   ";
            FQ48 = 1;
            FQ0 = 0;
            FQ1 = 0;
            break;
        case 2: srStr = "S/R:  88.2kHz   ";
            FQ48 = 0;
            FQ0 = 1;
            FQ1 = 0;
            break;
        case 3: srStr = "S/R:  96.0kHz   ";
            FQ48 = 1;
            FQ0 = 1;
            FQ1 = 0;
            break;
        case 5: srStr = "S/R: 192.0kHz   ";
            FQ48 = 1;
            FQ0 = 0;
            FQ1 = 1;
            break;
        default: srStr = "S/R: 176.4kHz   ";
            FQ48 = 0;
            FQ0 = 0;
            FQ1 = 1;
            break;
    }
    RefreshLine2Ex(srStr);
}

void PowerOn(void)
{
    POWER = 1;
    //25MHz->~2000*10000*4/25000000=~3.2s
    Delay10KTCYx(0);
    Delay10KTCYx(0);
    Delay10KTCYx(0);
    Delay10KTCYx(0);
    Delay10KTCYx(0);
    Delay10KTCYx(0);
    Delay10KTCYx(0);
    Delay10KTCYx(0);
    UpdateMasterVolume();
    UpdateSampleRate();
    MUTE = 1;
    Delay10KTCYx(10);
    SLCD_LIGHT = 0;
    MUTE = 0; //Unmute
    MUTE = 1;
}

void PowerOff(void)
{
    POWER = 0;
    SLCD_LIGHT = 1;
}



