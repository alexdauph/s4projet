#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/led.c ../src/ssd.c ../src/accel.c ../src/i2c.c ../src/lcd.c ../src/VL53L4CD_api.c ../src/VL53L4CD_calibration.c ../src/VL53L4CD_platform.c ../src/ctrl.c ../src/dst.c ../src/pmods.c ../src/btn.c ../src/swt.c ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/command/src/sys_command.c ../src/system_config/default/framework/system/console/src/sys_console.c ../src/system_config/default/framework/system/console/src/sys_console_uart.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/framework/system/random/src/sys_random.c ../src/system_config/default/framework/system/reset/src/sys_reset.c ../src/system_config/default/framework/system/tmr/src/sys_tmr.c ../src/system_config/default/framework/tcpip/src/common/helpers.c ../src/system_config/default/framework/tcpip/src/ipv4.c ../src/system_config/default/framework/tcpip/src/udp.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c ../src/system_config/default/framework/tcpip/src/arp.c ../src/system_config/default/framework/tcpip/src/dns.c ../src/system_config/default/framework/tcpip/src/hash_fnv.c ../src/system_config/default/framework/tcpip/src/oahash.c ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S ../src/system_config/default/framework/tcpip/src/tcpip_manager.c ../src/system_config/default/framework/tcpip/src/tcpip_notify.c ../src/system_config/default/framework/tcpip/src/tcpip_packet.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_tasks.c ../src/app_commands.c ../src/UDP_app.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1360937237/ssd.o ${OBJECTDIR}/_ext/1360937237/accel.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/lcd.o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o ${OBJECTDIR}/_ext/1360937237/ctrl.o ${OBJECTDIR}/_ext/1360937237/dst.o ${OBJECTDIR}/_ext/1360937237/pmods.o ${OBJECTDIR}/_ext/1360937237/btn.o ${OBJECTDIR}/_ext/1360937237/swt.o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/915312864/drv_spi.o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/2001008086/sys_command.o ${OBJECTDIR}/_ext/1544295906/sys_console.o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/327917790/sys_random.o ${OBJECTDIR}/_ext/68765530/sys_reset.o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ${OBJECTDIR}/_ext/1881663949/helpers.o ${OBJECTDIR}/_ext/26143033/ipv4.o ${OBJECTDIR}/_ext/26143033/udp.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ${OBJECTDIR}/_ext/26143033/arp.o ${OBJECTDIR}/_ext/26143033/dns.o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ${OBJECTDIR}/_ext/26143033/oahash.o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app_commands.o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/led.o.d ${OBJECTDIR}/_ext/1360937237/ssd.o.d ${OBJECTDIR}/_ext/1360937237/accel.o.d ${OBJECTDIR}/_ext/1360937237/i2c.o.d ${OBJECTDIR}/_ext/1360937237/lcd.o.d ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o.d ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o.d ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o.d ${OBJECTDIR}/_ext/1360937237/ctrl.o.d ${OBJECTDIR}/_ext/1360937237/dst.o.d ${OBJECTDIR}/_ext/1360937237/pmods.o.d ${OBJECTDIR}/_ext/1360937237/btn.o.d ${OBJECTDIR}/_ext/1360937237/swt.o.d ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/915312864/drv_spi.o.d ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/2001008086/sys_command.o.d ${OBJECTDIR}/_ext/1544295906/sys_console.o.d ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/327917790/sys_random.o.d ${OBJECTDIR}/_ext/68765530/sys_reset.o.d ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d ${OBJECTDIR}/_ext/1881663949/helpers.o.d ${OBJECTDIR}/_ext/26143033/ipv4.o.d ${OBJECTDIR}/_ext/26143033/udp.o.d ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/26143033/arp.o.d ${OBJECTDIR}/_ext/26143033/dns.o.d ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d ${OBJECTDIR}/_ext/26143033/oahash.o.d ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app_commands.o.d ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1360937237/ssd.o ${OBJECTDIR}/_ext/1360937237/accel.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/lcd.o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o ${OBJECTDIR}/_ext/1360937237/ctrl.o ${OBJECTDIR}/_ext/1360937237/dst.o ${OBJECTDIR}/_ext/1360937237/pmods.o ${OBJECTDIR}/_ext/1360937237/btn.o ${OBJECTDIR}/_ext/1360937237/swt.o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/915312864/drv_spi.o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/2001008086/sys_command.o ${OBJECTDIR}/_ext/1544295906/sys_console.o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/327917790/sys_random.o ${OBJECTDIR}/_ext/68765530/sys_reset.o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ${OBJECTDIR}/_ext/1881663949/helpers.o ${OBJECTDIR}/_ext/26143033/ipv4.o ${OBJECTDIR}/_ext/26143033/udp.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ${OBJECTDIR}/_ext/26143033/arp.o ${OBJECTDIR}/_ext/26143033/dns.o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ${OBJECTDIR}/_ext/26143033/oahash.o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app_commands.o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/led.c ../src/ssd.c ../src/accel.c ../src/i2c.c ../src/lcd.c ../src/VL53L4CD_api.c ../src/VL53L4CD_calibration.c ../src/VL53L4CD_platform.c ../src/ctrl.c ../src/dst.c ../src/pmods.c ../src/btn.c ../src/swt.c ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/command/src/sys_command.c ../src/system_config/default/framework/system/console/src/sys_console.c ../src/system_config/default/framework/system/console/src/sys_console_uart.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/framework/system/random/src/sys_random.c ../src/system_config/default/framework/system/reset/src/sys_reset.c ../src/system_config/default/framework/system/tmr/src/sys_tmr.c ../src/system_config/default/framework/tcpip/src/common/helpers.c ../src/system_config/default/framework/tcpip/src/ipv4.c ../src/system_config/default/framework/tcpip/src/udp.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c ../src/system_config/default/framework/tcpip/src/arp.c ../src/system_config/default/framework/tcpip/src/dns.c ../src/system_config/default/framework/tcpip/src/hash_fnv.c ../src/system_config/default/framework/tcpip/src/oahash.c ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S ../src/system_config/default/framework/tcpip/src/tcpip_manager.c ../src/system_config/default/framework/tcpip/src/tcpip_notify.c ../src/system_config/default/framework/tcpip/src/tcpip_packet.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_tasks.c ../src/app_commands.c ../src/UDP_app.c ../src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o: ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/e18d968629bcee5cc67c3b43cf4dcb762724271e.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o: ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/dc2d3a2f4200b474875c40a318d7f332719538f5.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  .generated_files/2b0f8f2d5f123750af37bdcd91c1e167c70b4667.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ssd.o: ../src/ssd.c  .generated_files/413869d25df7af40190ac2946ef3058d29da94e8.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ssd.o.d" -o ${OBJECTDIR}/_ext/1360937237/ssd.o ../src/ssd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/accel.o: ../src/accel.c  .generated_files/28dfab15d5082a66c817f466c82749aba5cc1293.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/accel.o.d" -o ${OBJECTDIR}/_ext/1360937237/accel.o ../src/accel.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/f5e0bc664a43558999f7e7aa9a19e584567d6295.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/lcd.o: ../src/lcd.c  .generated_files/48f46f808269be7ae71cbb87979cfc1c995cc5fc.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/lcd.o.d" -o ${OBJECTDIR}/_ext/1360937237/lcd.o ../src/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o: ../src/VL53L4CD_api.c  .generated_files/c7ce8934c63599b1aea5a0a9b1b425888195d493.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o.d" -o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o ../src/VL53L4CD_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o: ../src/VL53L4CD_calibration.c  .generated_files/b1ff049b8f6dbf169bc7aabe13af9408259852a5.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o.d" -o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o ../src/VL53L4CD_calibration.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o: ../src/VL53L4CD_platform.c  .generated_files/df8f70fe2ade051175de0a2a5c93d8f94706ed35.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o.d" -o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o ../src/VL53L4CD_platform.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ctrl.o: ../src/ctrl.c  .generated_files/29725d8130bc3489adca1a912a0d7ce6e7bd9ed7.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ctrl.o.d" -o ${OBJECTDIR}/_ext/1360937237/ctrl.o ../src/ctrl.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dst.o: ../src/dst.c  .generated_files/57c8492573ec89bdd3d46a858e6ecd218ec54f1e.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dst.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dst.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dst.o.d" -o ${OBJECTDIR}/_ext/1360937237/dst.o ../src/dst.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pmods.o: ../src/pmods.c  .generated_files/3538db65ce1adbe7e23bdf36e19be4d102efb2bc.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pmods.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pmods.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pmods.o.d" -o ${OBJECTDIR}/_ext/1360937237/pmods.o ../src/pmods.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/btn.o: ../src/btn.c  .generated_files/c39cc8748a073bd4caa65e12b300a8523817240b.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/btn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/btn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/btn.o.d" -o ${OBJECTDIR}/_ext/1360937237/btn.o ../src/btn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/swt.o: ../src/swt.c  .generated_files/9b28ef0eac85c9216a30b040e4bc447740ec3ca5.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/swt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/swt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/swt.o.d" -o ${OBJECTDIR}/_ext/1360937237/swt.o ../src/swt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o: ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c  .generated_files/2c278f0a2b8f75d8a1d32e0f71238b9ce7ca0d27.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/996065237" 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d" -o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o: ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c  .generated_files/fca2a015d9df158938cea1b984e1abfaad685ce.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1600828880" 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d" -o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c  .generated_files/2d27b08847856e0b20d5aa4f7aa303e5d2b5f14f.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c  .generated_files/c93f85353f1c11e94d8ab4093e27c86af4f969e2.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c  .generated_files/b31b25b9b5200f0ac3810e0352bcca70b8074cc5.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c  .generated_files/60c442a71ce4c82ca257be711b2d8e846102e009.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c  .generated_files/3de7218f65a8338e03b8f59f0d2c308379ee85ef.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c  .generated_files/68ffb90c079051bf00a2401856c4eba301d8ba17.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c  .generated_files/80d78f53013150133eefeeaafd5f6552b2b564b.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c  .generated_files/d84fd617e0a324a4f66b7f4da218eb0d953c4bcf.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c  .generated_files/5bda318579e540598ffd051cd74dff43ed3b55a4.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c  .generated_files/1237300e69dae093955ff06eab559c655f3b2742.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c  .generated_files/bc598aa9531434ae28c53e7d7373747be16a459.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c  .generated_files/8e8456af57ecb8005e67d44e10998aa3afc0c208.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c  .generated_files/67cdce97a34dae7d932b52371a7ee310c44ffdce.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c  .generated_files/a7beb9a456e806333cbb44c42aa73816c97540b6.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c  .generated_files/22ccdf66986d5ede3b156f7d5ff67d9f45acb48d.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/2bfb56070bc239b18af956195230ea75888ce9ff.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/5594093251df54e7a68e1933631d86387bbed0c3.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/8957d8fe7f5cf6360529b5ee58971a8ae954cda9.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/915312864/drv_spi.o: ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/781d844ace2e36ac786a1ffd71fab0c25d7c6cf4.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/915312864" 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915312864/drv_spi.o.d" -o ${OBJECTDIR}/_ext/915312864/drv_spi.o ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o: ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/ff46c541c5c5b2a7b87b6bb7383cd0b555bd6a13.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2077795248" 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1298913485/drv_tmr.o: ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/6231c7a120a9d6962986b1cc0221a3e82dc4d218.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1298913485" 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/ada76819c3de7b1ae72db6fd886e9c2f2996a00a.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327000265/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c  .generated_files/8d18fd3d87120cd25cf9f67109721ba771ece4b4.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c  .generated_files/b4c60fc9798c99bdf5eb4fa21ddd07d223fee6b0.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c  .generated_files/5116206f301eac3b0dad2bd0aa283b115e6d9b4.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/10f73ad3b465da8228d22889703d6332d4351800.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2001008086/sys_command.o: ../src/system_config/default/framework/system/command/src/sys_command.c  .generated_files/cb0efc1d174d9664d358ab30db839ef417dc416f.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2001008086" 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001008086/sys_command.o.d" -o ${OBJECTDIR}/_ext/2001008086/sys_command.o ../src/system_config/default/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1544295906/sys_console.o: ../src/system_config/default/framework/system/console/src/sys_console.c  .generated_files/d5eeb43bc222c8483023c1014608701b84e5dc14.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console.o ../src/system_config/default/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1544295906/sys_console_uart.o: ../src/system_config/default/framework/system/console/src/sys_console_uart.c  .generated_files/22932236634a897946c63b262a0d7e66017eab01.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ../src/system_config/default/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/afe5d85e180d96695909054c03e59096b4f751f6.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/d08fcaf032f81d99ad07b2ae8771d29e0e955a85.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o: ../src/system_config/default/framework/system/int/src/sys_int_pic32.c  .generated_files/b7cd9395a95bd90651957b6f26c82e16d5bdda3b.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1735427962" 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ../src/system_config/default/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/be8fcd63f7e007452c1d96c4f2d003829f612212.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327917790/sys_random.o: ../src/system_config/default/framework/system/random/src/sys_random.c  .generated_files/67c67df9edbe585c09d1b9ea734ec71295d584c2.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327917790" 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327917790/sys_random.o.d" -o ${OBJECTDIR}/_ext/327917790/sys_random.o ../src/system_config/default/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/242bfa0301cecb23edc0d2898feece4bd6e41833.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1417409628/sys_tmr.o: ../src/system_config/default/framework/system/tmr/src/sys_tmr.c  .generated_files/eee6195920afe85d4b540d0d2b9347a89bd83a75.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1417409628" 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ../src/system_config/default/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881663949/helpers.o: ../src/system_config/default/framework/tcpip/src/common/helpers.c  .generated_files/f11190a69f1d0cc279ce1bf719c22d4239103849.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881663949" 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881663949/helpers.o.d" -o ${OBJECTDIR}/_ext/1881663949/helpers.o ../src/system_config/default/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/ipv4.o: ../src/system_config/default/framework/tcpip/src/ipv4.c  .generated_files/e92c5167acd0ed679741d4a2414d71b42b87e3bf.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/ipv4.o.d" -o ${OBJECTDIR}/_ext/26143033/ipv4.o ../src/system_config/default/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/udp.o: ../src/system_config/default/framework/tcpip/src/udp.c  .generated_files/d6b152c4f568987842ac5e4a7c8448b6aadfb262.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/udp.o.d" -o ${OBJECTDIR}/_ext/26143033/udp.o ../src/system_config/default/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/7e95c2021d448d102e92ddd340ffd432d215e158.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/7b8cd7d3f4d68437ade86b06b17c2f0460b9649c.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/arp.o: ../src/system_config/default/framework/tcpip/src/arp.c  .generated_files/94316723d1e42509ecb89619692ee137edc71ff1.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/arp.o.d" -o ${OBJECTDIR}/_ext/26143033/arp.o ../src/system_config/default/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/dns.o: ../src/system_config/default/framework/tcpip/src/dns.c  .generated_files/3d12f7aa2a858a5b9b38465c947ecff94c3905e0.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/dns.o.d" -o ${OBJECTDIR}/_ext/26143033/dns.o ../src/system_config/default/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/hash_fnv.o: ../src/system_config/default/framework/tcpip/src/hash_fnv.c  .generated_files/b3307220d72390408875fc6fad281e0b1ae8b52.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ../src/system_config/default/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/oahash.o: ../src/system_config/default/framework/tcpip/src/oahash.c  .generated_files/1d0e0037da9488abe1fcbf8386f9120853c38250.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/oahash.o.d" -o ${OBJECTDIR}/_ext/26143033/oahash.o ../src/system_config/default/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_helpers.o: ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c  .generated_files/7c728d1e96ef9f6b9ea0f836aa1c17a8007e1288.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_manager.o: ../src/system_config/default/framework/tcpip/src/tcpip_manager.c  .generated_files/676844193e80c62ce2168e48d2e4c59b3ef8fadd.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ../src/system_config/default/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_notify.o: ../src/system_config/default/framework/tcpip/src/tcpip_notify.c  .generated_files/f3f5afa49b7ecf34f873b6f02f52273fb9d3605b.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ../src/system_config/default/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_packet.o: ../src/system_config/default/framework/tcpip/src/tcpip_packet.c  .generated_files/7acf5658f546480b5e062473cef44dcf4a85ac93.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ../src/system_config/default/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/2b476c269ef218995efa5dbba798c1c3c1ada888.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/4394b2de6f669da7c574c5a737a2916601d80da6.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/deea2862a5232dea38d72a3ce5752c7744cacd0b.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/568296c4a20304384bc7a7aa12a7ac608ab9864e.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UDP_app.o: ../src/UDP_app.c  .generated_files/d105fa3a7354eedc232d3296f57be515ae641171.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UDP_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ../src/UDP_app.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/31b7211738899be1eadb609797cc4ea14421f41.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  .generated_files/f37d3fa08d1c71828a90c4a77445e45e426a3217.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ssd.o: ../src/ssd.c  .generated_files/a1024699d7fe89273cb1fd7e961e2902fccb0e5c.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ssd.o.d" -o ${OBJECTDIR}/_ext/1360937237/ssd.o ../src/ssd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/accel.o: ../src/accel.c  .generated_files/a645821f92eb66b90a3edfbfac1a32257d43477d.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/accel.o.d" -o ${OBJECTDIR}/_ext/1360937237/accel.o ../src/accel.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/594024f1912891a0c76f267facc463ce5d69ea57.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/lcd.o: ../src/lcd.c  .generated_files/9067fd16c4047b1099b94a805e5af3ae6935a250.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/lcd.o.d" -o ${OBJECTDIR}/_ext/1360937237/lcd.o ../src/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o: ../src/VL53L4CD_api.c  .generated_files/9479063f4cde79d22c3e0bc2d8408c7bbc87ca33.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o.d" -o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_api.o ../src/VL53L4CD_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o: ../src/VL53L4CD_calibration.c  .generated_files/1b27c710d8a18d5cd86a56f10574e9377e929c5e.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o.d" -o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_calibration.o ../src/VL53L4CD_calibration.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o: ../src/VL53L4CD_platform.c  .generated_files/f6cf71b7c313e55c0c97caf76d74695a04f6a44a.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o.d" -o ${OBJECTDIR}/_ext/1360937237/VL53L4CD_platform.o ../src/VL53L4CD_platform.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ctrl.o: ../src/ctrl.c  .generated_files/b4f2a37308f09d6d9d0aefa8bd9edc789997bf82.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ctrl.o.d" -o ${OBJECTDIR}/_ext/1360937237/ctrl.o ../src/ctrl.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dst.o: ../src/dst.c  .generated_files/c78e02019e688eee3e0d0d488d4c3f7f1bb2dc9.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dst.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dst.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dst.o.d" -o ${OBJECTDIR}/_ext/1360937237/dst.o ../src/dst.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pmods.o: ../src/pmods.c  .generated_files/32e892b1b9cded3411562b86b69b1e402e8cf28.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pmods.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pmods.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pmods.o.d" -o ${OBJECTDIR}/_ext/1360937237/pmods.o ../src/pmods.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/btn.o: ../src/btn.c  .generated_files/3f0b4bcdb1f7306d0884d4db133846f5f0a3f9f8.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/btn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/btn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/btn.o.d" -o ${OBJECTDIR}/_ext/1360937237/btn.o ../src/btn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/swt.o: ../src/swt.c  .generated_files/c709bcbcc206021dc4b269ab51b08cc00ceb3003.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/swt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/swt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/swt.o.d" -o ${OBJECTDIR}/_ext/1360937237/swt.o ../src/swt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o: ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c  .generated_files/a6661a6901c60dd4a1d274f25866efed7a4923cc.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/996065237" 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d" -o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o: ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c  .generated_files/3517225c93fce9bab5e5c66b94323b3294db5137.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1600828880" 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d" -o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c  .generated_files/ff0cbfb56f88c75ab9003434bdcb160b81618695.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c  .generated_files/111f67b47fcb80d35adfcc8fa4c03a28c069e80e.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c  .generated_files/3170285caa2e7bbe855a5b2d7d04d867fa08a465.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c  .generated_files/7d072c941635f20a2300b147829c76a6beebf9e9.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c  .generated_files/7977aba829e904a8dbc5b8fe12957a21e508cb3a.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c  .generated_files/6c5e5af6d59b14da275efc29698bf57f7fb9c5ca.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c  .generated_files/318ba8aa15d3bc12fb9dbf72a5285f54bc61c18.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c  .generated_files/ecd153e3933313c1c5c0e6fb85918852453138c0.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c  .generated_files/b5573422041ee8544018100e861f47c27adb0763.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c  .generated_files/45c0fdddc5ebffa630db7a335659b0393b9f92d7.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c  .generated_files/89f84d3bdcdb11f0535ab25a8fa32f12af955528.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c  .generated_files/1fc26a77d3bb432391403b51e42f76386fdbf134.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c  .generated_files/475799e8844fb036aad28e799dd75803082b69dc.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c  .generated_files/110a5bde5152bfb7d8881d92e5ab55e697564a37.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c  .generated_files/8e960e52c438c57db2214c02951b8f42fd0cb232.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/f8c86a75fcc5c24202d3666e36d6f2672008941.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/e04b5dd509e63aae839aee888f209892d5163435.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/6c04a6458a8454afea6aa97a8331b52b4928129d.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/915312864/drv_spi.o: ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/7cc90e07e4bf0799e9977b6ef28e4b336452c386.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/915312864" 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915312864/drv_spi.o.d" -o ${OBJECTDIR}/_ext/915312864/drv_spi.o ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o: ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/b61abe8b809fac1839824ca6aa764253d03b8a5b.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2077795248" 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1298913485/drv_tmr.o: ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/e8fed719ccffeb5e2eae50effd98e99570911871.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1298913485" 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/d8f2bed242261c59fdc9b8a336e8af8222360a8c.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327000265/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c  .generated_files/b82b36933cfa71214de3b6413ee1fdf46a999c56.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c  .generated_files/1f0d74f4b075c5398080ab240dd9c1f55ee9bf6c.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c  .generated_files/a3a1e62ae67c581e8709d17334fb004a9e32edde.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/eaea0492f92f641e97c084d257ed34e8f8e1f825.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2001008086/sys_command.o: ../src/system_config/default/framework/system/command/src/sys_command.c  .generated_files/9fb84d6219f8c99ed1822f975a4624aaca8d9e42.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2001008086" 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001008086/sys_command.o.d" -o ${OBJECTDIR}/_ext/2001008086/sys_command.o ../src/system_config/default/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1544295906/sys_console.o: ../src/system_config/default/framework/system/console/src/sys_console.c  .generated_files/c664c56449f9d6551285feee393635acc2a42bcb.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console.o ../src/system_config/default/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1544295906/sys_console_uart.o: ../src/system_config/default/framework/system/console/src/sys_console_uart.c  .generated_files/49dabda1748f7bb3af70e8a00ce2b4e7514d07ee.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ../src/system_config/default/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/a5ff0302299ebfae5c1f7e0e1777dfeee16ac638.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/51720bad4586b0b5794478ff85ae56ad0de219b8.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o: ../src/system_config/default/framework/system/int/src/sys_int_pic32.c  .generated_files/d0b081df37444b654f7207d9023ebd6b8c55e6de.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1735427962" 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ../src/system_config/default/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/c70368866f456d218d02c9eda1e1c9860c9c31cf.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327917790/sys_random.o: ../src/system_config/default/framework/system/random/src/sys_random.c  .generated_files/39a8fa3285cff8157e2fb75d7ea44dfb0624ff53.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327917790" 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327917790/sys_random.o.d" -o ${OBJECTDIR}/_ext/327917790/sys_random.o ../src/system_config/default/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/8a6707a8f9b5852ae17c986d7f03f298c2bdea35.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1417409628/sys_tmr.o: ../src/system_config/default/framework/system/tmr/src/sys_tmr.c  .generated_files/6ee63f30819498a63fe7bc4fcf6ff63202dad90f.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1417409628" 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ../src/system_config/default/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881663949/helpers.o: ../src/system_config/default/framework/tcpip/src/common/helpers.c  .generated_files/6c21edf2fd7d218112ada08c54e5e7d068cb0f7d.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881663949" 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881663949/helpers.o.d" -o ${OBJECTDIR}/_ext/1881663949/helpers.o ../src/system_config/default/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/ipv4.o: ../src/system_config/default/framework/tcpip/src/ipv4.c  .generated_files/e0c481919ec690d56a4328d13e5fdc90dc345be3.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/ipv4.o.d" -o ${OBJECTDIR}/_ext/26143033/ipv4.o ../src/system_config/default/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/udp.o: ../src/system_config/default/framework/tcpip/src/udp.c  .generated_files/aa802d3d00228cecf7edb2a66b883634c19b38a5.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/udp.o.d" -o ${OBJECTDIR}/_ext/26143033/udp.o ../src/system_config/default/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/c9ecf08fb2795c82a6cf6fe9280ab165b933fb9d.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/5ea3111021096d915566b50bcd17e2d6297cd78a.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/arp.o: ../src/system_config/default/framework/tcpip/src/arp.c  .generated_files/b130c4bb782dce11640c815f3000da6483a0a624.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/arp.o.d" -o ${OBJECTDIR}/_ext/26143033/arp.o ../src/system_config/default/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/dns.o: ../src/system_config/default/framework/tcpip/src/dns.c  .generated_files/41b36bc7d7e0172362ed96f55ae0c29b86ba249d.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/dns.o.d" -o ${OBJECTDIR}/_ext/26143033/dns.o ../src/system_config/default/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/hash_fnv.o: ../src/system_config/default/framework/tcpip/src/hash_fnv.c  .generated_files/da924fa6aa4593074989a385600518ad7033e88a.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ../src/system_config/default/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/oahash.o: ../src/system_config/default/framework/tcpip/src/oahash.c  .generated_files/4839c000023dfec49e3e52c64031b662f3ab7bbb.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/oahash.o.d" -o ${OBJECTDIR}/_ext/26143033/oahash.o ../src/system_config/default/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_helpers.o: ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c  .generated_files/3b44bac5af74e20cdc771b718bffab622d2bccf0.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_manager.o: ../src/system_config/default/framework/tcpip/src/tcpip_manager.c  .generated_files/e46069d498b9cb5c6ec280699f49dee6f6f1d561.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ../src/system_config/default/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_notify.o: ../src/system_config/default/framework/tcpip/src/tcpip_notify.c  .generated_files/6de7fcde999b1d1ff7394fabefc7edab9e7029c4.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ../src/system_config/default/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26143033/tcpip_packet.o: ../src/system_config/default/framework/tcpip/src/tcpip_packet.c  .generated_files/6eb61da059553e85d7ba05f9686e16313bbffe82.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ../src/system_config/default/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/57df3d42b482f1301a7abbc175f617c9c607778d.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/56bcbf73f0b8f2d1b6451127281bc0844c9a5e2.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/e3e6848a96d2472b390a07feb21dbb1ec54e1879.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/667e4b5a6587fb309d62f5ea665a19d6a4db326f.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UDP_app.o: ../src/UDP_app.c  .generated_files/16fb3d516bbaff8afc14fa1bbf77e7ac279621fd.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UDP_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ../src/UDP_app.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/bf95eafc6ad09bb2433ac3ff9fe95b11b1451308.flag .generated_files/a724b6aa121ca02409aa17d3ac38c63a7b02d5e5.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MX3.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MX3.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
