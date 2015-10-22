
#include "LCD.h"

char dispbuf1[17];
char dispbuf2[17];

inline void RefreshLine1(void)
{
    RefreshLine1Ex(&dispbuf1);
}

inline void RefreshLine2(void)
{
    RefreshLine2Ex(&dispbuf2);
}


inline void RefreshLine1Ex(const char *line)
{
    SLCDSetDDRamAddr(0x00);
    PutsSLCD(line);

}

inline void RefreshLine2Ex(const char *line)
{
    SLCDSetDDRamAddr(0x40);
    PutsSLCD(line);
}