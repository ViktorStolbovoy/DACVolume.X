#include <p18cxxx.h>
#include "slcd.h"

/********************************************************************
*       Function Name:  WriteCmdXLCD                                *
*       Return Value:   void                                        *
*       Parameters:     cmd: command to send to LCD                 *
*       Description:    This routine writes a command to the Hitachi*
*                       HD44780 LCD controller. The user must check *
*                       to see if the LCD controller is busy before *
*                       calling this routine.                       *
********************************************************************/
void WriteCmdSLCD(unsigned char cmd)
{
#ifdef BIT8                             // 8-bit interface
        SLCD_TRIS_DATA_PORT = 0;             // Data port output
        SLCD_DATA_PORT_WR = cmd;             // Write command to data port
        // Set the control signals
        SLCD_RW_PIN = 0;                //Write
        SLCD_RS_PIN = 0;                //Instruction/command
        DelayFor18TCY();
        SLCD_E_PIN = 1;                 // Clock the command in
        DelayFor18TCY();
        SLCD_E_PIN = 0;
        DelayFor18TCY();
        SLCD_TRIS_DATA_PORT = 0xff;          // Data port input
#else                                   // 4-bit interface
#ifdef UPPER                            // Upper nibble interface
        SLCD_TRIS_DATA_PORT &= 0x0f;
        SLCD_DATA_PORT_WR &= 0x0f;
        SLCD_DATA_PORT_WR |= cmd&0xf0;
#else                                   // Lower nibble interface
        SLCD_TRIS_DATA_PORT &= 0xf0;
        SLCD_DATA_PORT_WR &= 0xf0;
        SLCD_DATA_PORT_WR |= (cmd>>4)&0x0f;
#endif
        SLCD_RW_PIN = 0;                     // Set control signals for command
        SLCD_RS_PIN = 0;
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock command in
        DelayFor18TCY();
        SLCD_E_PIN = 0;
#ifdef UPPER                            // Upper nibble interface
        SLCD_DATA_PORT_WR &= 0x0f;
        SLCD_DATA_PORT_WR |= (cmd<<4)&0xf0;
#else                                   // Lower nibble interface
        SLCD_DATA_PORT_WR &= 0xf0;
        SLCD_DATA_PORT_WR |= cmd&0x0f;
#endif
        DelayFor18TCY();
        SLCD_E_PIN = 1;                      // Clock command in
        DelayFor18TCY();
        SLCD_E_PIN = 0;
#ifdef UPPER                            // Make data nibble input
        SLCD_TRIS_DATA_PORT |= 0xf0;
#else
        SLCD_TRIS_DATA_PORT |= 0x0f;
#endif
#endif
        return;
}

