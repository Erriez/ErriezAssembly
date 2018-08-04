/*
 * MIT License
 *
 * Copyright (c) 2018 Erriez
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
 * \brief Assembly library example for Arduino
 * \details
 *      This is an example how to create an assembly Arduino library
 *      Source: https://github.com/Erriez/ErriezAssembly
 */

// Library include files
#include "Foo.h"
#include "LED.h"


void setup() 
{
    uint8_t valueIn;
    uint8_t valueOut;

    // Initialize Serial port
    Serial.begin(115200);
    Serial.println(F("Assembly library example"));

    // Start with an input value
    valueIn = 32;

    // Print input value
    Serial.print(F("Input value: "));
    Serial.println(valueIn);

    // Call assembly increment function in library
    valueOut = valueIncrement(valueIn);

    // Print output value
    Serial.print(F("Incremented value: "));
    Serial.println(valueOut);

    // Initialize LED
    LED_Init();

    Serial.print(F("Assembly LED blink started"));
}

void loop() 
{
    // Blink LED
    LED_On();
    delay(1000);
    LED_Off();
    delay(1000);
}
