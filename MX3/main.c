/************************************
 * Name :     main.c
 * Author:    Jp Gouin
 * Version :  h2022
 ************************************/

#include <xc.h>
#include <sys/attribs.h>
#include "config.h"
#include "ctrl.h"
#include <string.h>

#define TMR_TIME 0.001 // x us for each tick

// Since the flag is changed within an interrupt, we need the keyword volatile.
static volatile int Flag_1s = 0;


void __ISR(_TIMER_1_VECTOR, IPL2AUTO) Timer1ISR(void)
{
    Flag_1s = 1;       //    Indique à la boucle principale qu'on doit traiter
    IFS0bits.T1IF = 0; //    clear interrupt flag
}

void initialize_timer_interrupt(void)
{
    T1CONbits.TCKPS = 3;                                   //    256 prescaler value
    T1CONbits.TGATE = 0;                                   //    not gated input (the default)
    T1CONbits.TCS = 0;                                     //    PCBLK input (the default)
    PR1 = (int)(((float)(TMR_TIME * PB_FRQ) / 256) + 0.5); // set period register, generates one interrupt every 1 ms
                                                           //     48 kHz * 1 ms / 256 = 188
    TMR1 = 0;                                              //    initialize count to 0
    IPC1bits.T1IP = 2;                                     //    INT step 4: priority
    IPC1bits.T1IS = 0;                                     //    subpriority
    IFS0bits.T1IF = 0;                                     //    clear interrupt flag
    IEC0bits.T1IE = 1;                                     //    enable interrupt
    T1CONbits.ON = 1;                                      //    turn on Timer5
}

void main()
{
    LCD_Init();
    LED_Init();
    ACL_Init();
    AIC_Init();
    SWT_Init();
    BTN_Init();
    UART_Init(9600);
    I2C_Init(400000);
    SPIFLASH_Init();

    initialize_timer_interrupt();

    /*PMODS_InitPin(0, 1, 0, 0, 0); // initialisation du JB1 (RC2)) pour D0
    PMODS_InitPin(0, 2, 0, 0, 0); // initialisation du JA2 (RC1)) pour D1
    PMODS_InitPin(0, 3, 0, 0, 0); // initialisation du JA3 (RC4)) pour D2
    PMODS_InitPin(0, 4, 0, 0, 0); // initialisation du JA4 (RG6)) pour D3
    PMODS_InitPin(0, 7, 0, 0, 0); // initialisation du JA4 (RC3)) pour parite
    PMODS_InitPin(0, 8, 0, 0, 0); // initialisation du JA4 (RG7)) pour strobe
    PMODS_SetValue(0, 8, 0);*/

    int count_1s = 0;
    int count_10ms = 0;

    macro_enable_interrupts();

    // Main loop
    while (1)
    {
        if (Flag_1s) // Flag d'interruption à chaque 1 ms
        {
            Flag_1s = 0; // Reset flag
                
            // Do every 1s
            if (count_1s >= 1000)
            {    
                count_1s = 0;
                       
                LCD_WriteStringAtPos("Initial", 0, 0);   
                
                LCD_WriteIntAtPos(game.data, 6, 1, 0, 0);  
            }

            if(count_10ms >= 10)
            {
                // Proof of concept only
                game.bits.dpad_up = BTN_GetValue('U');
                game.bits.dpad_down = BTN_GetValue('D');
                game.bits.dpad_left = BTN_GetValue('L');
                game.bits.dpad_right = BTN_GetValue('R');
                
                game.bits.green = SWT_GetValue(7);
                game.bits.red = SWT_GetValue(6);
                game.bits.yellow = SWT_GetValue(5);
                game.bits.blue = SWT_GetValue(4);
                game.bits.orange = SWT_GetValue(3);
                
                CTRL_Refresh();
            }

            count_1s++;
            count_10ms++;
        }
    }
}