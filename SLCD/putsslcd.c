#include <p18cxxx.h>
#include "slcd.h"

/********************************************************************
*       Function Name:  putsXLCD
*       Return Value:   void
*       Parameters:     buffer: pointer to string
*       Description:    This routine writes a string of bytes to the
*                       Hitachi HD44780 LCD controller. The user
*                       must check to see if the LCD controller is
*                       busy before calling this routine. The data
*                       is written to the character generator RAM or
*                       the display data RAM depending on what the
*                       previous SetxxRamAddr routine was called.
********************************************************************/
void PutsSLCD(const char *buffer)
{
        while(*buffer)                  // Write data to LCD up to null
        {
                while(BusySLCD());      // Wait while LCD is busy
                WriteDataSLCD(*buffer); // Write character to LCD
                buffer++;               // Increment buffer
        }
        return;
}

