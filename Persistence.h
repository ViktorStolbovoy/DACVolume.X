/* 
 * File:   Percistence.h
 * Author: Main User
 *
 * Created on November 13, 2014, 6:41 PM
 */

#ifndef PERSISTENCE_H
#define	PERSISTENCE_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* PERSISTENCE_H */

struct DAC_SETTINGS
{
    uint8_t Sequence;
    uint8_t SampleRate;
        /*0-44.1
          1-48.0
          2-88.2
          3-96.0
          4-176.4
          5-192.0*/
    uint8_t Volume;
    uint8_t ChannelScaling[16];
    uint8_t CheckSum;

};

extern struct DAC_SETTINGS __persistent s_dacSettings;

uint8_t GetCheckSum( uint8_t * data, uint8_t dataLen );

void SaveToFlash(void);

void RestoreFromFlash(void);
