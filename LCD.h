/* 
 * File:   LCD.h
 * Author: Main User
 *
 * Created on November 14, 2014, 8:57 PM
 */

#ifndef LCD_H
#define	LCD_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* LCD_H */

#include "SLCD/slcd.h"

extern char dispbuf1[17];
extern char dispbuf2[17];


inline void RefreshLine1(void);

inline void RefreshLine1Ex(const char *line);

inline void RefreshLine2(void);

inline void RefreshLine2Ex(const char *line);
