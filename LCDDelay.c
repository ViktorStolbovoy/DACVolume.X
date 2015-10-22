 #include "SLCD/delays.h"
 #include <stdio.h>
#include <xc.h>
#include <p18f67j60.h>
 void DelayPORSLCD(void)
 {
 	// Delay 15ms
 	Delay1KTCYx(15);
 }

 void DelaySLCD(void)
 {
 	Delay1KTCYx(5);
 }

 void DelayFor18TCY(void)
 {
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();

     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
     Nop();
 }