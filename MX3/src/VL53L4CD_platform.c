/*
 Copyright (c) 2021, STMicroelectronics - All Rights Reserved

 This file : part of VL53L4CD Ultra Lite Driver and : dual licensed, either
 'STMicroelectronics Proprietary license'
 or 'BSD 3-clause "New" or "Revised" License' , at your option.

*******************************************************************************

 'STMicroelectronics Proprietary license'

*******************************************************************************

 License terms: STMicroelectronics Proprietary in accordance with licensing
 terms at www.st.com/sla0081

 STMicroelectronics confidential
 Reproduction and Communication of this document : strictly prohibited unless
 specifically authorized in writing by STMicroelectronics.


*******************************************************************************

 Alternatively, VL53L4CD Ultra Lite Driver may be distributed under the terms of
 'BSD 3-clause "New" or "Revised" License', in which case the following
 provisions apply instead of the ones mentioned above :

*******************************************************************************

 License terms: BSD 3-clause "New" or "Revised" License.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.

 3. Neither the name of the copyright holder nor the names of its contributors
 may be used to endorse or promote products derived from this software
 without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************
*/

#include <xc.h>
#include "i2c.h"
#include "VL53L4CD_platform.h"

unsigned char I2C_Write(unsigned char slaveAddress, unsigned char *dataBuffer, unsigned char bytesNumber, unsigned char stopBit);

unsigned char I2C_Read(unsigned char slaveAddress, unsigned char *dataBuffer, unsigned char bytesNumber);

int8_t VL53L4CD_RdDWord(uint16_t dev, uint16_t RegisterAdress, uint32_t *value)
{
	uint8_t buffer[4] = {0};

	buffer[0] = (RegisterAdress >> 8UL) & 0xFF;
	buffer[1] = (RegisterAdress >> 0UL) & 0xFF;

	if (I2C_Write((uint8_t)(dev & 0xFF), buffer, 2, 1) != 0)
		return 0xFF;

	if (I2C_Read((uint8_t)(dev & 0xFF), buffer, 4) != 0)
		return 0xFF;

	*value = 0;
	*value |= buffer[0] << 24UL;
	*value |= buffer[1] << 16UL;
	*value |= buffer[2] << 8UL;
	*value |= buffer[3] << 0UL;

	return 0;
}

int8_t VL53L4CD_RdWord(uint16_t dev, uint16_t RegisterAdress, uint16_t *value)
{
	uint8_t buffer[2] = {0};

	buffer[0] = (RegisterAdress >> 8UL) & 0xFF;
	buffer[1] = (RegisterAdress >> 0UL) & 0xFF;

	if (I2C_Write((uint8_t)(dev & 0xFF), buffer, 2, 1) != 0)
		return 0xFF;

	if (I2C_Read((uint8_t)(dev & 0xFF), buffer, 2) != 0)
		return 0xFF;

	*value = 0;
	*value |= buffer[0] << 8UL;
	*value |= buffer[1] << 0UL;

	return 0;
}

int8_t VL53L4CD_RdByte(uint16_t dev, uint16_t RegisterAdress, uint8_t *value)
{
	uint8_t buffer[2] = {0};

	buffer[0] = (RegisterAdress >> 8UL) & 0xFF;
	buffer[1] = (RegisterAdress >> 0UL) & 0xFF;

	if (I2C_Write((uint8_t)(dev & 0xFF), buffer, 2, 1) != 0)
		return 0xFF;

	if (I2C_Read((uint8_t)(dev & 0xFF), buffer, 1) != 0)
		return 0xFF;

	*value = 0;
	*value |= buffer[0] << 0UL;

	return 0;
}

int8_t VL53L4CD_WrByte(uint16_t dev, uint16_t RegisterAdress, uint8_t value)
{
	uint8_t buffer[3] = {0};

	buffer[0] = (RegisterAdress >> 8UL) & 0xFF;
	buffer[1] = (RegisterAdress >> 0UL) & 0xFF;
	buffer[2] = (value >> 0UL) & 0xFF;

	if (I2C_Write((uint8_t)(dev & 0xFF), buffer, 3, 1) != 0)
		return 0xFF;

	return 0;
}

int8_t VL53L4CD_WrWord(uint16_t dev, uint16_t RegisterAdress, uint16_t value)
{
	uint8_t buffer[4] = {0};

	buffer[0] = (RegisterAdress >> 8UL) & 0xFF;
	buffer[1] = (RegisterAdress >> 0UL) & 0xFF;
	buffer[2] = (value >> 8UL) & 0xFF;
	buffer[3] = (value >> 0UL) & 0xFF;

	if (I2C_Write((uint8_t)(dev & 0xFF), buffer, 4, 1) != 0)
		return 0xFF;

	return 0;
}

int8_t VL53L4CD_WrDWord(uint16_t dev, uint16_t RegisterAdress, uint32_t value)
{
	uint8_t buffer[6] = {0};

	buffer[0] = (RegisterAdress >> 8) & 0xFF;
	buffer[1] = (RegisterAdress >> 0) & 0xFF;
	buffer[2] = (value >> 24UL) & 0xFF;
	buffer[3] = (value >> 16UL) & 0xFF;
	buffer[4] = (value >> 8UL) & 0xFF;
	buffer[5] = (value >> 0UL) & 0xFF;

	if (I2C_Write((uint8_t)(dev & 0xFF), buffer, 6, 1) != 0)
		return 0xFF;

	return 0;
}

void WaitMs(uint32_t TimeMs)
{
	/* To be filled by customer */
	int16_t fpbthresh = 938; // = ( 240 * 1000 ) / 256
	T2CON = 0x8070;			 /* Enable TMR1, Tpb, 1:256 */
	while (TimeMs--)
	{ /* t x 39us loop */
		TMR2 = 0;
		while (TMR2 < fpbthresh)
			;
	}
	T2CON = 0;
}
