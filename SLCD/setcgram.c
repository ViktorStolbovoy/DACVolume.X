#include <p18cxxx.h>
#include "slcd.h"

/********************************************************************
*       Function Name:  SetCGRamAddr                                *
*       Return Value:   void                                        *
*       Parameters:     CGaddr: character generator ram address     *
*       Description:    This routine sets the character generator   *
*                       address of the Hitachi HD44780 LCD          *
*                       controller. The user must check to see if   *
*                       the LCD controller is busy before calling   *
*                       this routine.                               *
********************************************************************/
void SetCGRamAddr(unsigned char CGaddr)
{
#ifdef BIT8                                     // 8-bit interface
        SLCD_TRIS_DATA_PORT = 0;                     // Make data port ouput
        SLCD_DATA_PORT_WR = CGaddr | 0b01000000;        // Write cmd and address to port
        SLCD_RW_PIN = 0;                             // Set control signals
        SLCD_RS_PIN = 0;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                              // Clock cmd and address in
        DelayFor18TCY();
        SLCD_E_PIN = 0;
        DelayFor18TCY();
        SLCD_TRIS_DATA_PORT = 0xff;                  // Make data port inputs
#else                                           // 4-bit interface
#ifdef UPPER                                    // Upper nibble interface
        SLCD_TRIS_DATA_PORT &= 0x0f;                 // Make nibble input
        SLCD_DATA_PORT_WR &= 0x0f;                      // and write upper nibble
        SLCD_DATA_PORT_WR |= ((CGaddr | 0b01000000) & 0xf0);
#else                                           // Lower nibble interface
        SLCD_TRIS_DATA_PORT &= 0xf0;                 // Make nibble input
        SLCD_DATA_PORT_WR &= 0xf0;                      // and write upper nibble
        SLCD_DATA_PORT_WR |= (((CGaddr |0b01000000)>>4) & 0x0f);
#endif
        SLCD_RW_PIN = 0;                             // Set control signals
        SLCD_RS_PIN = 0;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                              // Clock cmd and address in
        DelayFor18TCY();
        SLCD_E_PIN = 0;
#ifdef UPPER                                    // Upper nibble interface
        SLCD_DATA_PORT_WR &= 0x0f;                      // Write lower nibble
        SLCD_DATA_PORT_WR |= ((CGaddr<<4)&0xf0);
#else                                           // Lower nibble interface
        SLCD_DATA_PORT_WR &= 0xf0;                      // Write lower nibble
        SLCD_DATA_PORT_WR |= (CGaddr&0x0f);
#endif
        DelayFor18TCY();
        SLCD_E_PIN = 1;                              // Clock cmd and address in
        DelayFor18TCY();
        SLCD_E_PIN = 0;
#ifdef UPPER                                    // Upper nibble interface
        SLCD_TRIS_DATA_PORT |= 0xf0;                 // Make inputs
#else                                           // Lower nibble interface
        SLCD_TRIS_DATA_PORT |= 0x0f;                 // Make inputs
#endif
#endif
        return;
}

