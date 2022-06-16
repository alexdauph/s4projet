#include <XInput.h>

uint8_t states[8] = {0};
uint8_t states_old[8] = {0};
uint8_t button_map[8] = {DPAD_RIGHT, DPAD_LEFT, DPAD_DOWN, DPAD_UP, BUTTON_R3, BUTTON_L3, TRIGGER_LEFT, BUTTON_A};

void setup() {
  /*pinMode(9, INPUT_PULLUP);
  pinMode(8, INPUT_PULLUP);
  pinMode(7, INPUT_PULLUP);
  pinMode(6, INPUT_PULLUP);
  pinMode(5, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  pinMode(2, INPUT_PULLUP);*/

  for(uint8_t i = 0; i < 8; i++)
  {
    pinMode(i+2, INPUT_PULLUP);
    states[i] = digitalRead(i+2);
    states_old[i] = digitalRead(i+2);
  }
    
  XInput.begin();
  Serial.begin(115200);
}

void loop() {

  for(uint8_t i = 0; i < 8; i++)
  {
    states[i] = digitalRead(i+2);

    if(states[i] != states_old[i])
    {
      states_old[i] = states[i];

      if(states[i] == 0)
        XInput.press(button_map[i]);
      else
        XInput.release(button_map[i]);
      delay(250);
    }
  }
}
