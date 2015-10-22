#include <p18cxxx.h>
#include "slcd.h"

/********************************************************************
*       Function Name:  ReadDataXLCD                                *
*       Return Value:   char: data byte from LCD controller         *
*       Parameters:     void                                        *
*       Description:    This routine reads a data byte from the     *
*                       Hitachi HD44780 LCD controller. The user    *
*                       must check to see if the LCD controller is  *
*                       busy before calling this routine. The data  *
*                       is read from the character generator RAM or *
*                       the display data RAM depending on what the  *
*                       previous SetxxRamAddr routine was called.   *
********************************************************************/
char ReadDataSLCD(void)
{
        char data;

#ifdef BIT8                             // 8-bit interface
        SLCD_RS_PIN = 1;                     // Set the control bits
        SLCD_RW_PIN = 1;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock the data out of the LCD
        DelayFor18TCY();
        data = SLCD_DATA_PORT_RD;               // Read the data
        SLCD_E_PIN = 0;
        SLCD_RS_PIN = 0;                     // Reset the control bits
        SLCD_RW_PIN = 0;
#else                                   // 4-bit interface
        SLCD_RW_PIN = 1;
        SLCD_RS_PIN = 1;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock the data out of the LCD
        DelayFor18TCY();
#ifdef UPPER                            // Upper nibble interface
        data = SLCD_DATA_PORT_RD&0xf0;          // Read the upper nibble of data
#else                                   // Lower nibble interface
        data = (SLCD_DATA_PORT_RD<<4)&0xf0;     // read the upper nibble of data
#endif
        SLCD_E_PIN = 0;                      // Reset the clock line
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock the next nibble out of the LCD
        DelayFor18TCY();
#ifdef UPPER                            // Upper nibble interface
        data |= (SLCD_DATA_PORT_RD>>4)&0x0f;    // Read the lower nibble of data
#else                                   // Lower nibble interface
        data |= SLCD_DATA_PORT_RD&0x0f;         // Read the lower nibble of data
#endif
        SLCD_E_PIN = 0;
        SLCD_RS_PIN = 0;                     // Reset the control bits
        SLCD_RW_PIN = 0;
#endif
        return(data);                   // Return the data byte
}

