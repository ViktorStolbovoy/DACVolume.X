#include <p18cxxx.h>
#include "slcd.h"

/********************************************************************
*       Function Name:  SetDDRamAddr                                *
*       Return Value:   void                                        *
*       Parameters:     CGaddr: display data address                *
*       Description:    This routine sets the display data address  *
*                       of the Hitachi HD44780 LCD controller. The  *
*                       user must check to see if the LCD controller*
*                       is busy before calling this routine.        *
********************************************************************/
inline void  SLCDSetDDRamAddr(unsigned char DDaddr)
{
    while(BusySLCD());
    WriteCmdSLCD(DDaddr | 0b10000000);
}

