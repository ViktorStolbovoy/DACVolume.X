#include <p18cxxx.h>
#include "slcd.h"

/********************************************************************
*       Function Name:  BusyXLCD                                    *
*       Return Value:   char: busy status of LCD controller         *
*       Parameters:     void                                        *
*       Description:    This routine reads the busy status of the   *
*                       Hitachi HD44780 LCD controller.             *
********************************************************************/
unsigned char BusySLCD(void)
{
        SLCD_RW_PIN = 1;                     // Set the control bits for read
        SLCD_RS_PIN = 0;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock in the command
        DelayFor18TCY();
#ifdef BIT8                             // 8-bit interface
        if(SLCD_DATA_PORT_RD&0x80)                      // Read bit 7 (busy bit)
        {                               // If high
                SLCD_E_PIN = 0;              // Reset clock line
                SLCD_RW_PIN = 0;             // Reset control line
                return 1;               // Return TRUE
        }
        else                            // Bit 7 low
        {
                SLCD_E_PIN = 0;              // Reset clock line
                SLCD_RW_PIN = 0;             // Reset control line
                return 0;               // Return FALSE
        }
#else                                   // 4-bit interface
#ifdef UPPER                            // Upper nibble interface
        if(SLCD_DATA_PORT_RD&0x80)
#else                                   // Lower nibble interface
        if(SLCD_DATA_PORT_RD&0x08)
#endif
        {
                SLCD_E_PIN = 0;              // Reset clock line
                DelayFor18TCY();
                SLCD_E_PIN = 1;              // Clock out other nibble
                DelayFor18TCY();
                SLCD_E_PIN = 0;
                SLCD_RW_PIN = 0;             // Reset control line
                return 1;               // Return TRUE
        }
        else                            // Busy bit is low
        {
                SLCD_E_PIN = 0;              // Reset clock line
                DelayFor18TCY();
                SLCD_E_PIN = 1;              // Clock out other nibble
                DelayFor18TCY();
                SLCD_E_PIN = 0;
                SLCD_RW_PIN = 0;             // Reset control line
                return 0;               // Return FALSE
        }
#endif
}

