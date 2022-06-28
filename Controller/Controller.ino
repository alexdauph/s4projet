#include <XInput.h>
#include <Wire.h>

typedef union buttons_t
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
};

void i2c_handler(int count);

buttons_t btns, btns_old;

void setup()
{
  // XInput.begin();
  // Serial.begin(9600);          // start serial for output
  Wire.begin(0x99);            // join i2c bus with address #8
  Wire.onReceive(i2c_handler); // register event

  btns.data = 0;
  btns_old.data = 0;
}

void loop()
{
  // Nothing to do here
}

// Function is called whenever I2C data is received
void i2c_handler(int count)
{
  char buff[2] = {0};

  if (count == 2)
  {
    buff[0] = Wire.read();
    buff[1] = Wire.read();
    btns.data = (buff[1] << 8) | (buff[0] << 0);
  }
  else
  {
    for (uint8_t i = 0; i < count; i++)
      Wire.read();
    return;
  }

  if (btns.data != btns_old.data)
  {
    for (uint8_t i = 0; i < 16; i++)
    {
      // Press button
      if (((btns.data >> i) & 1) && !((btns_old.data >> i) & 1))
        XInput.press(i);
      // Release button
      else if (!((btns.data >> i) & 1) && ((btns_old.data >> i) & 1))
        XInput.release(i);
    }
    btns_old.data = btns.data;
  }
}
