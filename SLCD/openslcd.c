#include <p18cxxx.h>
#include "delays.h"
#include "slcd.h"

/********************************************************************
*       Function Name:  OpenXLCD                                    *
*       Return Value:   void                                        *
*       Parameters:     lcdtype: sets the type of LCD (lines)       *
*       Description:    This routine configures the LCD. Based on   *
*                       the Hitachi HD44780 LCD controller. The     *
*                       routine will configure the I/O pins of the  *
*                       microcontroller, setup the LCD for 4- or    *
*                       8-bit mode and clear the display. The user  *
*                       must provide three delay routines:          *
*                       DelayFor18TCY() provides a 18 Tcy delay     *
*                       DelayPORXLCD() provides at least 15ms delay *
*                       DelayXLCD() provides at least 5ms delay     *
********************************************************************/
void OpenSLCD(unsigned char lcdtype)
{
        // The data bits must be either a 8-bit port or the upper or
        // lower 4-bits of a port. These pins are made into inputs
#ifdef BIT8                             // 8-bit mode, use whole port
        SLCD_DATA_PORT_WR = 0;
        SLCD_TRIS_DATA_PORT = 0x00;
#else                                   // 4-bit mode
#ifdef UPPER                            // Upper 4-bits of the port
        SLCD_DATA_PORT_WR &= 0x0f;
        SLCD_TRIS_DATA_PORT &= 0x0F;
#else                                   // Lower 4-bits of the port
        SLCD_DATA_PORT_WR &= 0xf0;
        SLCD_TRIS_DATA_PORT &= 0xF0;
#endif
#endif
        SLCD_TRIS_RW = 0;                    // All control signals made outputs
        SLCD_TRIS_RS = 0;
        SLCD_TRIS_E = 0;
        SLCD_RW_PIN = 0;                     // R/W pin made low
        SLCD_RS_PIN = 0;                     // Register select pin made low
        SLCD_E_PIN = 0;                      // Clock pin made low

        // Delay for 15ms to allow for LCD Power on reset
        DelayPORSLCD();
 //-------------------reset procedure through software----------------------       
		WriteCmdSLCD(0x30);                 //8bits, 2 lines, 5*7
        Delay10KTCYx(0x05);

		WriteCmdSLCD(0x30);                 //Is it just in case it didn't get the first time?
		Delay10KTCYx(0x01);


		WriteCmdSLCD(0x32);                 //Why??????
//------------------------------------------------------------------------------------------


        // Set data interface width, # lines, font
        while(BusySLCD());              // Wait if LCD busy
        WriteCmdSLCD(lcdtype);          // Function set cmd

        // Turn the display on then off
        while(BusySLCD());              // Wait if LCD busy
        WriteCmdSLCD(DOFF&CURSOR_OFF&BLINK_OFF);        // Display OFF/Blink OFF
        while(BusySLCD());              // Wait if LCD busy
        WriteCmdSLCD(DON&CURSOR_ON&BLINK_ON);           // Display ON/Blink ON

        // Clear display
        while(BusySLCD());              // Wait if LCD busy
        WriteCmdSLCD(0x01);             // Clear display

        // Set entry mode inc, no shift
        while(BusySLCD());              // Wait if LCD busy
        WriteCmdSLCD(SLCD_SHIFT_CUR_RIGHT);   // Entry Mode

        // Set DD Ram address to 0
        SLCDSetDDRamAddr(0x00);             // Set Display data ram address to 0
        return;
}

