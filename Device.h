/* 
 * File:   Device.h
 * Author: Main User
 *
 * Created on November 20, 2014, 9:36 PM
 */

#ifndef DEVICE_H
#define	DEVICE_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* DEVICE_H */

#define POWER LATDbits.LD0
#define MUTE LATDbits.LD2
//#define FLASH_LED LATJbits.LJ0
#define IR_PORT PORTBbits.RB4
#define IR_RVC_LED LATDbits.LD1


#define DATA_CH1 LATFbits.LF1
#define DATA_CH2 LATFbits.LF2
#define DATA_CH3 LATFbits.LF3
#define DATA_CH4 LATFbits.LF4
#define DATA_CH5 LATFbits.LF5
#define DATA_CH6 LATFbits.LF6
#define DATA_CH7 LATFbits.LF7
#define DATA_CH8 LATGbits.LG4

#define DATA_SYNC LATEbits.LE3
#define DATA_LD_GRP1 LATEbits.LE4
#define DATA_LD_GRP2 LATEbits.LE5

#define FQ48 LATEbits.LE2
#define FQ0 LATEbits.LE1
#define FQ1 LATEbits.LE0

#define ENCODER_CH2 PORTAbits.RA2
#define ENCODER_CH1_INT INTCON3bits.INT1F
#define ENCODER_CH1 PORTBbits.RB1

inline void UpdateMasterVolume(void);
void ChangeMasterVolume(signed char d);
void UpdateSampleRate(void);
void SendVolumeToDevice(void);
void SendDataToDeviceCh(uint8_t offset);
inline void IRTimerInt();
void PowerOn(void);
void PowerOff(void);