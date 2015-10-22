#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <xc.h>
#include <p18f97j60.h>
#include "Persistence.h"
#include "LCD.h"



struct  DAC_SETTINGS __persistent s_dacSettingsTmp, s_dacSettings, s_dacSettingsOriginal;



const unsigned long SETTINGS_ADDR = 0x1D000;
const unsigned long SETTINGS_LEN =   0x2000;

const uint8_t reserveSettingsArr[0x2000] @ 0x1D000;

/*0x00 record sequence
 *0x01 volume
 *0x02 sample rate 
 *0x03 ch1 
 *-- 
 *0x12 ch16
 *0x13 00  
 * --
 *0x1E 00
 *0x1F CHECKSUM
 */
#define DATA_SIZE 0x20
#define WRITE_BLOCK_SIZE 0x40

void RestoreFromFlash(void)
{
    unsigned long addr = SETTINGS_ADDR;
    unsigned long addrStop = SETTINGS_ADDR + SETTINGS_LEN;
    
    memset(&s_dacSettings.ChannelScaling, 0, sizeof(s_dacSettings.ChannelScaling));
    s_dacSettings.Volume = 80;
    s_dacSettings.SampleRate = 4;
    s_dacSettings.Sequence= 0xFF;

    while(addr < addrStop)
    {
        ReadFlash(addr, sizeof(s_dacSettingsTmp), (unsigned char *)&s_dacSettingsTmp);
        if (s_dacSettingsTmp.Sequence < s_dacSettings.Sequence)
        {
            uint8_t chSum = GetCheckSum((unsigned char *)&s_dacSettingsTmp, sizeof(s_dacSettingsTmp) - 1);
            if (s_dacSettingsTmp.CheckSum == chSum)
            {
                s_dacSettings = s_dacSettingsTmp;
                s_dacSettingsOriginal = s_dacSettingsTmp;
            }
        }
        addr += WRITE_BLOCK_SIZE;
    }
}

unsigned long FindEmpty(unsigned long startAddr)
{
    unsigned long addrStop = SETTINGS_ADDR + SETTINGS_LEN;
    unsigned long addr = startAddr;
    while(addr < addrStop)
    {
        ReadFlash(addr, sizeof(s_dacSettingsTmp), (unsigned char *)&s_dacSettingsTmp);

        uint8_t *tmpAddr = (uint8_t *)&s_dacSettingsTmp;
        uint8_t *blockEnd = tmpAddr + sizeof(s_dacSettingsTmp);
        while(tmpAddr < blockEnd)
        {
            if (*tmpAddr != 0xFF) break;
            tmpAddr ++;
        }
        if (tmpAddr == blockEnd) return addr;

        addr += WRITE_BLOCK_SIZE;
    }
    return 0;
}

void SaveToFlash(void)
{
    s_dacSettingsOriginal.Sequence = s_dacSettings.Sequence; //Don't want to compare sequence
    int cmp = memcmp(&s_dacSettingsOriginal, &s_dacSettings, sizeof(s_dacSettings) - 1); //No Checksum compare
    if (cmp)
    {
        unsigned long addr = SETTINGS_ADDR;
        uint8_t success = 0;
        while (!success)
        {
            RefreshLine1Ex(    "Preparing...    ");
            unsigned long emptyAddr = FindEmpty(addr);
            if (emptyAddr)
            {
                RefreshLine1Ex("Writing...      ");
                s_dacSettings.Sequence --;
                s_dacSettings.CheckSum = GetCheckSum((unsigned char *)&s_dacSettings, sizeof(s_dacSettings) - 1);
                WriteBlockFlash(emptyAddr, 1, (unsigned char *)&s_dacSettings);

                ReadFlash(emptyAddr, sizeof(s_dacSettingsTmp), (unsigned char *)&s_dacSettingsTmp);
                success = !memcmp(&s_dacSettingsTmp, &s_dacSettings, sizeof(s_dacSettings));
                RefreshLine1();
            }
            else
            {
                RefreshLine1Ex("Erasing...      ");
                s_dacSettings.Sequence = 0xFF;
                EraseFlash(SETTINGS_ADDR, SETTINGS_ADDR + SETTINGS_LEN - 1);
            }
        }
        s_dacSettingsOriginal = s_dacSettings;
        RefreshLine1Ex("Stored          ");
    }
    else
    {
        RefreshLine1Ex("No change       ");
    }
}

uint8_t GetCheckSum( uint8_t * data, uint8_t dataLen )
{
    uint8_t res = (*data) ^ 0xFF;
    for(uint8_t i = 1; i < dataLen; i ++)
    {
        data ++;
        res += *data;
    }
    return res;
}
