/* 
 * File:   main.c
 * Author: Main User
 *
 * Created on October 26, 2014, 9:26 AM
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// PIC18F67J60 Configuration Bit Settings
#include <xc.h>
#include <p18f97j60.h>

#include "LCD.h"
#include <tcpip.h>

#include "Persistence.h"
#include "Device.h"
#include "IR.h"

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
/*
// CONFIG1L
#pragma config WDT = OFF         // Watchdog Timer Enable bit (WDT enabled)
#pragma config STVR = ON        // Stack Overflow/Underflow Reset Enable bit (Reset on stack overflow/underflow enabled)
#pragma config XINST = OFF       // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode enabled)
#pragma config DEBUG = OFF

// CONFIG1H
#pragma config CP0 = OFF        // Code Protection bit (Program memory is not code-protected)

// CONFIG2L
#pragma config FOSC = HS     // Oscillator Selection bits (EC oscillator, PLL enabled and under software control, CLKO function on OSC2)
#pragma config FOSC2 = ON       // Default/Reset System Clock Select bit (Clock selected by FOSC1:FOSC0 as system clock is enabled when OSCCON<1:0> = 00)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor enabled)
#pragma config IESO = OFF        // Two-Speed Start-up (Internal/External Oscillator Switchover) Control bit (Two-Speed Start-up disabled)

// CONFIG2H
#pragma config WDTPS = 32768    // Watchdog Timer Postscaler Select bits (1:32768)

// CONFIG3L

// CONFIG3H
#pragma config ETHLED = ON      // Ethernet LED Enable bit (RA0/RA1 are multiplexed with LEDA/LEDB when Ethernet module is enabled and function as I/O when Ethernet is disabled
*/

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

// CONFIG1L
#pragma config DEBUG = ON
#pragma config WDT = OFF        // Watchdog Timer Enable bit (WDT disabled (control is placed on SWDTEN bit))
#pragma config STVR = ON        // Stack Overflow/Underflow Reset Enable bit (Reset on stack overflow/underflow enabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

// CONFIG1H
#pragma config CP0 = OFF        // Code Protection bit (Program memory is not code-protected)

// CONFIG2L
#pragma config FOSC = HS        
#pragma config FOSC2 = ON       // Default/Reset System Clock Select bit (Clock selected by FOSC1:FOSC0 as system clock is enabled when OSCCON<1:0> = 00)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Two-Speed Start-up (Internal/External Oscillator Switchover) Control bit (Two-Speed Start-up disabled)

// CONFIG2H
#pragma config WDTPS = 32768    // Watchdog Timer Postscaler Select bits (1:32768)

// CONFIG3L
#pragma config ETHLED = ON      // Ethernet LED Enable bit (RA0/RA1 are multiplexed with LEDA/LEDB when Ethernet module is enabled and function as I/O when Ethernet is disabled)


#define SERVER_PORT 89

static ROM BYTE SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};

APP_CONFIG AppConfig;

static void InitAppConfig(void)
{
	AppConfig.Flags.bIsDHCPEnabled = FALSE;
	AppConfig.Flags.bInConfigMode = TRUE;
	memcpypgm2ram((void*)&AppConfig.MyMACAddr, (ROM void*)SerializedMACAddress, sizeof(AppConfig.MyMACAddr));
//	{
//		_prog_addressT MACAddressAddress;
//		MACAddressAddress.next = 0x157F8;
//		_memcpy_p2d24((char*)&AppConfig.MyMACAddr, MACAddressAddress, sizeof(AppConfig.MyMACAddr));
//	}
	AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul | MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
	AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
	AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2<<8ul | MY_DEFAULT_MASK_BYTE3<<16ul | MY_DEFAULT_MASK_BYTE4<<24ul;
	AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
	AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2<<8ul | MY_DEFAULT_GATE_BYTE3<<16ul | MY_DEFAULT_GATE_BYTE4<<24ul;
	AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul  | MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul  | MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
	AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul  | MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul  | MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;

	// Load the default NetBIOS Host Name
	memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*)MY_DEFAULT_HOST_NAME, 16);
	FormatNetBIOSName(AppConfig.NetBIOSName);
}

void Configure(void)
{
    OSCTUNE = 0;
    OSCCONbits.IDLEN = 1; //PRI_IDLE
    OSCCONbits.SCS1 = 1;
    OSCCONbits.SCS0 = 0;
  
    RCONbits.IPEN = 0; //No interrupt priorities

    ADCON1 = 0x0F;
    CMCON = 0x0F;

    MUTE = 1;
    PowerOff();
    //FLASH_LED = 0;

    TRISA = 0b00000100; //All outpur, except RA2
    TRISB = 0b11011111;   // All input, excepr RB5(LCD light)
    TRISC = 0x00; //All output
    TRISD = 0x00; // All output
    TRISE = 0x00; // All output
    TRISF = 0x00; //DAC DATAs 
    //TRISJ = 0x00;   //All output
    TRISG = 0x00;   //All output

    LATA = 0;
    LATB = 0;
    LATC = 0;
    LATD = 0;
    LATE = 0;

    INTCON2 = 0;//*_INTCON2_INTEDG2_MASK |*/  _INTCON2_RBPU_MASK; //Raising edge + rullup on B
    INTCON3 = _INTCON3_INT2E_MASK | _INTCON3_INT1E_MASK | _INTCON3_INT3E_MASK;

    TickInit();
    InitAppConfig();
    StackInit();
    InitrIR();
    
    INTCON = _INTCON_PEIE_MASK | _INTCON_RBIE_MASK | _INTCON_INT0E_MASK;
}



uint32_t s_encoderLastUpdate = 0;

void __interrupt ISRLP(void)
{
    TickUpdate();

    if (INTCON3bits.INT2F) //Button "clock"
    {
        s_dacSettings.SampleRate ++;
        if (s_dacSettings.SampleRate > 5) s_dacSettings.SampleRate = 0;
        UpdateSampleRate();
        INTCON3bits.INT2F = 0;
    }

    if (ENCODER_CH1_INT) //Rotary encoder
    {
        //Delay1KTCYx(1); -That's for mechanical RE deglitching
        if (!ENCODER_CH1)
        {
            uint32_t currentTS = TickGet();
            uint32_t diff = currentTS - s_encoderLastUpdate;
            //sprintf(&dispbuf2, "Upd: %5i     ", diff);
            //RefreshLine2();
            signed char d;
            
            if (diff < 600)
            {
                d = -2;
            }
            else
            {
                d = -1;
            }
            s_encoderLastUpdate = currentTS;
            if (ENCODER_CH2)
            {
                d = -d;
            }

            ChangeMasterVolume(d);
        }
        ENCODER_CH1_INT = 0;
    }
    if (INTCON3bits.INT3F) //Button "save"
    {
        //FLASH_LED = 1; //Yellow led on
        SaveToFlash();
        INTCON3bits.INT3F = 0;
    }

    if (INTCONbits.INT0F) //Button "power"
    {
        //FLASH_LED = 1; //Yellow led on
        if (POWER)
        {
            PowerOff();
            Delay1KTCYx(1); //Deglitching, there are delays in the PowerOn, so don't need it there
        }
        else
        {
            PowerOn();
        }
        INTCONbits.INT0F = 0;
    }

    if (INTCONbits.RBIF)
    {
        ProcessIRInt();
        INTCONbits.RBIF = 0;
    }
    if (PIR1bits.TMR1IF)
    {
        IRTimerInt();
        PIR1bits.TMR1IF = 0;
    }
    ei();
}

uint8_t resOK[3] = {0x00, 0x10, 0xFF};
uint8_t badChecksum[2] = {0xFF, 0x00};
uint8_t invalidCommand[2] = {0xFF, 0x01};

void TCPServer(void)
{
    uint16_t wMaxGet, wMaxPut;
    static TCP_SOCKET srvSocket;
    static enum _TCPServerState
    {
        SM_HOME = 0,
        SM_LISTENING,
        SM_CLOSING,
    } tcpServerState = SM_HOME;

    //sprintf(&dispbuf2, "%i %i ", tcpServerState, srvSocket);
    //RefreshLine2();
    
    switch(tcpServerState)
    {
        case SM_HOME:
            // Allocate a socket for this server to listen and accept connections on
            srvSocket = TCPOpen(0, TCP_OPEN_SERVER, SERVER_PORT, TCP_PURPOSE_GENERIC_TCP_SERVER);
            if(srvSocket == INVALID_SOCKET)
                return;

            tcpServerState = SM_LISTENING;
            break;

        case SM_LISTENING:
            // See if anyone is connected to us
            if(!TCPIsConnected(srvSocket))
                return;

            // Figure out how many bytes have been received and how many we can transmit.
            wMaxGet = TCPIsGetReady(srvSocket);  // Get TCP RX FIFO byte count
            wMaxPut = TCPIsPutReady(srvSocket);  // Get TCP TX FIFO free space

            // Make sure we don't take more bytes out of the RX FIFO than we can put into the TX FIFO
            //if(wMaxPut < wMaxGet) wMaxGet = wMaxPut; - Shouldn't be applicable

            // Process all bytes that we can
            // This is implemented as a loop, processing up to sizeof(dispbuf2) bytes at a time.
            // This limits memory usage while maximizing performance.  Single byte Gets and Puts are a lot slower than multibyte GetArrays and PutArrays.
            
            // Transfer the data out of the TCP RX FIFO and into our local processing buffer.
            uint8_t cmdBytes[sizeof(s_dacSettings.ChannelScaling) + 2];
            memset(&cmdBytes, 0, sizeof(cmdBytes));
            TCPGetArray(srvSocket, cmdBytes, sizeof(cmdBytes));
            uint8_t checksum = GetCheckSum(cmdBytes, sizeof(cmdBytes) - 1);
            if (checksum != cmdBytes[sizeof(cmdBytes) - 1])
            {
                memset(&cmdBytes, 0, sizeof(cmdBytes)); //Reset command
                cmdBytes[0] = 0xFF; //Error
                cmdBytes[1] = 0x00; //Invalid checksum
           }
            else
            {
                switch(*cmdBytes)
                {
                    case 0: //Get settings
                        memset(&cmdBytes, 0, sizeof(cmdBytes)); //Reset command
                        cmdBytes[0] = 0x01;
                        cmdBytes[1] = s_dacSettings.Volume;
                        cmdBytes[2] = s_dacSettings.SampleRate;
                        cmdBytes[3] = POWER;
                        break;
                    case 1: //Set master volume
                        s_dacSettings.Volume = cmdBytes[1];
                        di(); //disable interruprs to prevent discrepancy in displayed vs real volume
                        UpdateMasterVolume();
                        ei();
                        memset(&cmdBytes, 0, sizeof(cmdBytes)); //All zeros - OK command
                        break;
                    case 2: //Get channels attenuation
                        cmdBytes[0] = 0x02; //Numeric reply
                        memcpy(&cmdBytes[1], &s_dacSettings.ChannelScaling, sizeof(s_dacSettings.ChannelScaling));
                        break;
                    case 3: //Set channels attenuation
                        memcpy(&s_dacSettings.ChannelScaling, &cmdBytes[1], sizeof(s_dacSettings.ChannelScaling));
                        di(); //disable interruprs to prevent discrepancy in displayed vs real volume
                        SendVolumeToDevice();
                        ei();
                        memset(&cmdBytes, 0, sizeof(cmdBytes)); //All zeros - OK command
                        break;
                     case 4: //Get sample rate
                        memset(&cmdBytes, 0, sizeof(cmdBytes)); //Reset command
                        cmdBytes[0] = 0x01;
                        cmdBytes[1] = s_dacSettings.SampleRate;
                        break;
                    case 5: //Set sample rate
                        s_dacSettings.SampleRate = cmdBytes[1];
                        di(); //disable interruprs to prevent discrepancy in displayed vs real volume
                        UpdateSampleRate();
                        ei();
                        memset(&cmdBytes, 0, sizeof(cmdBytes)); //All zeros - OK command
                        break;
                    case 7: //Save settings to flash
                        di(); //disable interruprs to prevent discrepancy in displayed vs real volume
                        SaveToFlash();
                        ei();
                        memset(&cmdBytes, 0, sizeof(cmdBytes)); //All zeros - OK command
                        break;
                    case 9: //Power ON/OFF
                        if (cmdBytes[1])
                        {
                            PowerOn();
                        }
                        else
                        {
                            PowerOff();
                        }
                        memset(&cmdBytes, 0, sizeof(cmdBytes)); //All zeros - OK command
                        break;
                    case 10: //Get IR RC buffer
                        #ifdef IR_DISCOVERY
                        if (cmdBytes[1] < 16)
                        {
                            memcpy(&cmdBytes[1], &s_numTicksDiff[cmdBytes[1] << 2], 16);
                        }
                        else
                        {
                            cmdBytes[1] = s_numTicksDiffIdx;
                            s_numTicksDiffIdx = 0;
                        }
                        #else
                            s_irLearn = 0xFF;
                            if (cmdBytes[1] < 16)
                            {
                                memcpy(&cmdBytes[1], &s_irCode, sizeof(cmdBytes) - 2);
                                memset(&s_irCode, 0, sizeof(s_irCode));
                                s_irCodeBitIdx = 1;
                                s_irCodeByteIdx = 0;
                            }
                            else
                            {
                                cmdBytes[1] = s_irCodeBitIdx;
                                cmdBytes[2] = s_irCodeByteIdx;
                                cmdBytes[3] = s_prevIRPort;
                                cmdBytes[4] = s_irLearn;
                            }
                        #endif
                        cmdBytes[0] = 0x02; //Numeric reply
                        break;
                    case 11: //IR learn more
                        s_irLearn = cmdBytes[1];
                        memset(&cmdBytes, 0, sizeof(cmdBytes)); //All zeros - OK command
                        break;
                    default:
                        memset(&cmdBytes, 0, sizeof(cmdBytes));
                        cmdBytes[0] = 0xFF; //Error
                        cmdBytes[1] = 0x01; //Bad command
                }
            }

            cmdBytes[sizeof(cmdBytes) - 1] = GetCheckSum(cmdBytes, sizeof(cmdBytes) - 1);
            TCPPutArray(srvSocket, cmdBytes, sizeof(cmdBytes));

            tcpServerState = SM_CLOSING;
            break;

        case SM_CLOSING:
            // Close the socket connection.
            TCPClose(srvSocket);

            tcpServerState = SM_HOME;
            break;
    }
}


int main(void) {

    Configure();

   //PORTJbits.RJ0 = led1;

    OpenSLCD(EIGHT_BIT & LINES_5X7);
    while(BusySLCD());              // Wait if LCD busy
    WriteCmdSLCD(DON&CURSOR_OFF&BLINK_OFF);

    RestoreFromFlash();
    PowerOn();
    
    ei();
    while (1)
    {
        StackTask();
        TCPServer();
    }

    return (EXIT_SUCCESS);
}

                                                                                                                                                                                                                                                                                                          
