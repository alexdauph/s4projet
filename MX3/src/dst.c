#include "config.h"
#include "system_config.h"
#include "system/common/sys_module.h" // SYS function prototypes
#include "driver/spi/src/dynamic/drv_spi_internal.h"
#include "dst.h"
#include "lcd.h"
#include "VL53L4CD_api.h"

void DST_Init(void)
{
    VL53L4CD_SensorInit(DST_SENSOR_ADDRESS);
    VL53L4CD_StartRanging(DST_SENSOR_ADDRESS);
}

unsigned int DST_Get(void)
{
    unsigned char data_ready;
    static unsigned int distance_mm = 0;
    VL53L4CD_Result_t result;

    VL53L4CD_CheckForDataReady(DST_SENSOR_ADDRESS, &data_ready);
    if (data_ready)
    {
        VL53L4CD_GetResult(DST_SENSOR_ADDRESS, &result);
        VL53L4CD_ClearInterrupt(DST_SENSOR_ADDRESS);
        distance_mm = result.distance_mm;
    }
    else
        VL53L4CD_ClearInterrupt(DST_SENSOR_ADDRESS);

    return distance_mm;
}

/* *****************************************************************************
 End of File
 */
