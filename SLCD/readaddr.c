#include <p18cxxx.h>
#include "slcd.h"

/*********************************************************************
*       Function Name:  ReadAddrXLCD                                 *
*       Return Value:   char: address from LCD controller            *
*       Parameters:     void                                         *
*       Description:    This routine reads an address byte from the  *
*                       Hitachi HD44780 LCD controller. The user     *
*                       must check to see if the LCD controller is   *
*                       busy before calling this routine. The address*
*                       is read from the character generator RAM or  *
*                       the display data RAM depending on what the   *
*                       previous SetxxRamAddr routine was called.    *
*********************************************************************/
unsigned char ReadAddrSLCD(void)
{
        char data;                      // Holds the data retrieved from the LCD

#ifdef BIT8                             // 8-bit interface
        SLCD_RW_PIN = 1;                     // Set control bits for the read
        SLCD_RS_PIN = 0;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock data out of the LCD controller
        DelayFor18TCY();
        data = SLCD_DATA_PORT_RD;               // Save the data in the register
        SLCD_E_PIN = 0;
        SLCD_RW_PIN = 0;                     // Reset the control bits
#else                                   // 4-bit interface
        SLCD_RW_PIN = 1;                     // Set control bits for the read
        SLCD_RS_PIN = 0;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock data out of the LCD controller
        DelayFor18TCY();
#ifdef UPPER                            // Upper nibble interface
        data = SLCD_DATA_PORT_RD&0xf0;          // Read the nibble into the upper nibble of data
#else                                   // Lower nibble interface
        data = (SLCD_DATA_PORT_RD<<4)&0xf0;     // Read the nibble into the upper nibble of data
#endif
        SLCD_E_PIN = 0;                      // Reset the clock
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock out the lower nibble
        DelayFor18TCY();
#ifdef UPPER                            // Upper nibble interface
        data |= (SLCD_DATA_PORT_RD>>4)&0x0f;    // Read the nibble into the lower nibble of data
#else                                   // Lower nibble interface
        data |= SLCD_DATA_PORT_RD&0x0f;         // Read the nibble into the lower nibble of data
#endif
        SLCD_E_PIN = 0;
        SLCD_RW_PIN = 0;                     // Reset the control lines
#endif
        return (data&0x7f);             // Return the address, Mask off the busy bit
}

