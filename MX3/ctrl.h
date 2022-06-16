#ifndef _CTRL_H
#define _CTRL_H

#define CTRL_ADDRESS 0x69

void CTRL_Refresh(void);

union
{
  struct
  {
    uint16_t logo : 1;       // BUTTON_LOGO
    uint16_t green : 1;      // BUTTON_A
    uint16_t red : 1;        // BUTTON_B
    uint16_t blue : 1;       // BUTTON_X
    uint16_t yellow : 1;     // BUTTON_Y
    uint16_t orange : 1;     // BUTTON_LB
    uint16_t white : 1;      // BUTTON_RB
    uint16_t star_power : 1; // BUTTON_BACK
    uint16_t start : 1;      // BUTTON_START
    uint16_t rsv9 : 1;       // ??
    uint16_t rsv10 : 1;      // ??
    uint16_t dpad_up : 1;    // DPAD_UP
    uint16_t dpad_down : 1;  // DPAD_DOWN
    uint16_t dpad_left : 1;  // DPAD_LEFT
    uint16_t dpad_right : 1; // DPAD_RIGHT
    uint16_t rsv15 : 1;      // TRIGGER_LEFT
  } bits;
  uint16_t data;
} game;

#endif /* _LED_H */
