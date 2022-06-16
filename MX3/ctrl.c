
#include <xc.h>
#include <sys/attribs.h>
//#include "config.h"
#include "ctrl.h"

void CTRL_Refresh(void)
{
    unsigned char buff[2] = {0};

    buff[0] = (game.data & 0x00FF) >> 0;
    buff[1] = (game.data & 0xFF00) >> 8;

    I2C_Write(CTRL_ADDRESS, buff, 2, 1);
}