#include <p18cxxx.h>
#include "slcd.h"

/********************************************************************
*       Function Name:  WriteDataXLCD                               *
*       Return Value:   void                                        *
*       Parameters:     data: data byte to be written to LCD        *
*       Description:    This routine writes a data byte to the      *
*                       Hitachi HD44780 LCD controller. The user    *
*                       must check to see if the LCD controller is  *
*                       busy before calling this routine. The data  *
*                       is written to the character generator RAM or*
*                       the display data RAM depending on what the  *
*                       previous SetxxRamAddr routine was called.   *
********************************************************************/
void WriteDataSLCD(char data)
{
#ifdef BIT8                             // 8-bit interface
        SLCD_TRIS_DATA_PORT = 0;             // Make port output
        SLCD_DATA_PORT_WR = data;               // Write data to port
        // Set control bits
        SLCD_RS_PIN = 1;                     
        SLCD_RW_PIN = 0;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock data into LCD
        DelayFor18TCY();
        SLCD_E_PIN = 0;
        SLCD_RS_PIN = 0;                // Reset control bits
        SLCD_TRIS_DATA_PORT = 0xff;          // Make port input
#else                                   // 4-bit interface
#ifdef UPPER                            // Upper nibble interface
        SLCD_TRIS_DATA_PORT &= 0x0f;
        SLCD_DATA_PORT_WR &= 0x0f;
        SLCD_DATA_PORT_WR |= data&0xf0;
#else                                   // Lower nibble interface
        SLCD_TRIS_DATA_PORT &= 0xf0;
        SLCD_DATA_PORT_WR &= 0xf0;
        SLCD_DATA_PORT_WR |= ((data>>4)&0x0f);
#endif
        SLCD_RS_PIN = 1;                     // Set control bits
        SLCD_RW_PIN = 0;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock nibble into LCD
        DelayFor18TCY();
        SLCD_E_PIN = 0;
#ifdef UPPER                            // Upper nibble interface
        SLCD_DATA_PORT_WR &= 0x0f;
        SLCD_DATA_PORT_WR |= ((data<<4)&0xf0);
#else                                   // Lower nibble interface
        SLCD_DATA_PORT_WR &= 0xf0;
        SLCD_DATA_PORT_WR |= (data&0x0f);
#endif
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock nibble into LCD
        DelayFor18TCY();
        SLCD_E_PIN = 0;
#ifdef UPPER                            // Upper nibble interface
        SLCD_TRIS_DATA_PORT |= 0xf0;
#else                                   // Lower nibble interface
        SLCD_TRIS_DATA_PORT |= 0x0f;
#endif
#endif
        return;
}

