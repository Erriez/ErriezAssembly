/*
 * MIT License
 *
 * Copyright (c) 2020 Erriez
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/*!
 * \file LED.S
 * \brief Assembly library example for Arduino
 * \details
 *      Source: https://github.com/Erriez/ErriezAssembly
 */

/* Check Arduino UNO board */
#ifndef ARDUINO_ARCH_AVR
#error Only tested on Arduino ATMega328
#endif

/* Include low level AVR pin-control */
#include <avr/io.h>

/* Place assembly code in .text section */
.section .text

/* Export assembly functions in this file as global */
.global	LED_Init
.global	LED_On
.global	LED_Off

/* Build-in LED pin constant for Arduino UNO board */
.equ	LED_PIN,	5

/*!
 * \brief Initialize LED
 */
LED_Init:
	sbi		_SFR_IO_ADDR(DDRB), LED_PIN
	ret

/*!
 * \brief Turn LED on
 */
LED_On:
	sbi		_SFR_IO_ADDR(PORTB), LED_PIN
	ret

/*!
 * \brief Turn LED off
 */
LED_Off:
	cbi		_SFR_IO_ADDR(PORTB), LED_PIN
	ret
