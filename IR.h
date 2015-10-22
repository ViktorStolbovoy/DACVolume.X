/* 
 * File:   IR.h
 * Author: Main User
 *
 * Created on November 20, 2014, 9:41 PM
 */

#ifndef IR_H
#define	IR_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* IR_H */

extern volatile uint8_t s_irLearn;
extern volatile uint8_t s_irCodeBitIdx;
extern volatile uint8_t s_irCodeByteIdx;
extern volatile uint8_t s_irCode[16];
extern uint8_t s_numTicksDiff[256];
extern uint16_t s_numTicksDiffIdx;
extern uint8_t s_prevIRPort;

inline void InitrIR(void);
void ProcessIRInt(void);