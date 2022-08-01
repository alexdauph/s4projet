
#include <xc.h>
#include <sys/attribs.h>
#include "config.h"
#include "ctrl.h"
#include "i2c.h"

void CTRL_Init(void)
{
    ctrl.btns.data = 0;
    ctrl.joystick_right_x = 0;
}

void CTRL_Refresh(void)
{
    unsigned char buff[5] = {0};

    buff[0] = (ctrl.btns.data & 0x00FF) >> 0;
    buff[1] = (ctrl.btns.data & 0xFF00) >> 8;
    buff[2] = (ctrl.joystick_right_x & 0x00FF) >> 0;
    buff[3] = (ctrl.joystick_right_x & 0xFF00) >> 8;

    I2C_Write(CTRL_ADDRESS, buff, 4, 1);
}