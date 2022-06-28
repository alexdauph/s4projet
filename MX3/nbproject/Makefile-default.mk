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
FINAL_IMAGE=${DISTDIR}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=config_bits.c led.c i2c.c acl.c adc.c aic.c spiflash.c lcd.c uart.c btn.c pmods.c main.c swt.c date_time.c ctrl.c VL53L4CD_api.c VL53L4CD_calibration.c VL53L4CD_platform.c dst.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/config_bits.o ${OBJECTDIR}/led.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/acl.o ${OBJECTDIR}/adc.o ${OBJECTDIR}/aic.o ${OBJECTDIR}/spiflash.o ${OBJECTDIR}/lcd.o ${OBJECTDIR}/uart.o ${OBJECTDIR}/btn.o ${OBJECTDIR}/pmods.o ${OBJECTDIR}/main.o ${OBJECTDIR}/swt.o ${OBJECTDIR}/date_time.o ${OBJECTDIR}/ctrl.o ${OBJECTDIR}/VL53L4CD_api.o ${OBJECTDIR}/VL53L4CD_calibration.o ${OBJECTDIR}/VL53L4CD_platform.o ${OBJECTDIR}/dst.o
POSSIBLE_DEPFILES=${OBJECTDIR}/config_bits.o.d ${OBJECTDIR}/led.o.d ${OBJECTDIR}/i2c.o.d ${OBJECTDIR}/acl.o.d ${OBJECTDIR}/adc.o.d ${OBJECTDIR}/aic.o.d ${OBJECTDIR}/spiflash.o.d ${OBJECTDIR}/lcd.o.d ${OBJECTDIR}/uart.o.d ${OBJECTDIR}/btn.o.d ${OBJECTDIR}/pmods.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/swt.o.d ${OBJECTDIR}/date_time.o.d ${OBJECTDIR}/ctrl.o.d ${OBJECTDIR}/VL53L4CD_api.o.d ${OBJECTDIR}/VL53L4CD_calibration.o.d ${OBJECTDIR}/VL53L4CD_platform.o.d ${OBJECTDIR}/dst.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/config_bits.o ${OBJECTDIR}/led.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/acl.o ${OBJECTDIR}/adc.o ${OBJECTDIR}/aic.o ${OBJECTDIR}/spiflash.o ${OBJECTDIR}/lcd.o ${OBJECTDIR}/uart.o ${OBJECTDIR}/btn.o ${OBJECTDIR}/pmods.o ${OBJECTDIR}/main.o ${OBJECTDIR}/swt.o ${OBJECTDIR}/date_time.o ${OBJECTDIR}/ctrl.o ${OBJECTDIR}/VL53L4CD_api.o ${OBJECTDIR}/VL53L4CD_calibration.o ${OBJECTDIR}/VL53L4CD_platform.o ${OBJECTDIR}/dst.o

# Source Files
SOURCEFILES=config_bits.c led.c i2c.c acl.c adc.c aic.c spiflash.c lcd.c uart.c btn.c pmods.c main.c swt.c date_time.c ctrl.c VL53L4CD_api.c VL53L4CD_calibration.c VL53L4CD_platform.c dst.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/config_bits.o: config_bits.c  .generated_files/flags/default/d35b375b25fa8715ff180f28acf2b6a85beaae55 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/config_bits.o.d 
	@${RM} ${OBJECTDIR}/config_bits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/config_bits.o.d" -o ${OBJECTDIR}/config_bits.o config_bits.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/led.o: led.c  .generated_files/flags/default/aa928f77d80b3ea29b5b679fdb91c654e63f1a45 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/led.o.d" -o ${OBJECTDIR}/led.o led.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/i2c.o: i2c.c  .generated_files/flags/default/3c87f3af8893e479a20380ede31452b00f92479d .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/i2c.o.d" -o ${OBJECTDIR}/i2c.o i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/acl.o: acl.c  .generated_files/flags/default/ae9232c0daa1b952779d3867ac817c7ba9608901 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/acl.o.d 
	@${RM} ${OBJECTDIR}/acl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/acl.o.d" -o ${OBJECTDIR}/acl.o acl.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/adc.o: adc.c  .generated_files/flags/default/1ac1a43b919b2fc3aa62a004f095dea501be0f29 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/aic.o: aic.c  .generated_files/flags/default/bb3566b3b8c92c6b781291937c982fb6b20017dc .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/aic.o.d 
	@${RM} ${OBJECTDIR}/aic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/aic.o.d" -o ${OBJECTDIR}/aic.o aic.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/spiflash.o: spiflash.c  .generated_files/flags/default/82ac82fa37005a80194ff2b663d2fb4857d72ede .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spiflash.o.d 
	@${RM} ${OBJECTDIR}/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/spiflash.o.d" -o ${OBJECTDIR}/spiflash.o spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lcd.o: lcd.c  .generated_files/flags/default/582d86b56b39601e4147a3b86a9a7c2412dea192 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.o.d 
	@${RM} ${OBJECTDIR}/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lcd.o.d" -o ${OBJECTDIR}/lcd.o lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/uart.o: uart.c  .generated_files/flags/default/16977c638850723f2f46e81e2f10f5ab7c874652 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart.o.d 
	@${RM} ${OBJECTDIR}/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/uart.o.d" -o ${OBJECTDIR}/uart.o uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/btn.o: btn.c  .generated_files/flags/default/2a8cc9d77b12c0bbfcee9290da12298a6241715c .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/btn.o.d 
	@${RM} ${OBJECTDIR}/btn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/btn.o.d" -o ${OBJECTDIR}/btn.o btn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/pmods.o: pmods.c  .generated_files/flags/default/83f5d5f1997c82404abff1bd7bec7299b799b15 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pmods.o.d 
	@${RM} ${OBJECTDIR}/pmods.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/pmods.o.d" -o ${OBJECTDIR}/pmods.o pmods.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/e67f4145a4c3a5f9c1d348cd11e7e8b9d2809ee4 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/swt.o: swt.c  .generated_files/flags/default/75618e3234fed72550026761d6da2eb63183fc0c .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/swt.o.d 
	@${RM} ${OBJECTDIR}/swt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/swt.o.d" -o ${OBJECTDIR}/swt.o swt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/date_time.o: date_time.c  .generated_files/flags/default/1a58c6bef20d8a7f42248ba204b95bc640d1f128 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/date_time.o.d 
	@${RM} ${OBJECTDIR}/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/date_time.o.d" -o ${OBJECTDIR}/date_time.o date_time.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/ctrl.o: ctrl.c  .generated_files/flags/default/dd0b28ca527aff075a8692b92f2138a65547391a .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ctrl.o.d 
	@${RM} ${OBJECTDIR}/ctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ctrl.o.d" -o ${OBJECTDIR}/ctrl.o ctrl.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/VL53L4CD_api.o: VL53L4CD_api.c  .generated_files/flags/default/49501c6ed95a506b46a839b7312d505888317330 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/VL53L4CD_api.o.d 
	@${RM} ${OBJECTDIR}/VL53L4CD_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/VL53L4CD_api.o.d" -o ${OBJECTDIR}/VL53L4CD_api.o VL53L4CD_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/VL53L4CD_calibration.o: VL53L4CD_calibration.c  .generated_files/flags/default/c3b1d2bffecda3952868c9d23f638efef960349c .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/VL53L4CD_calibration.o.d 
	@${RM} ${OBJECTDIR}/VL53L4CD_calibration.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/VL53L4CD_calibration.o.d" -o ${OBJECTDIR}/VL53L4CD_calibration.o VL53L4CD_calibration.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/VL53L4CD_platform.o: VL53L4CD_platform.c  .generated_files/flags/default/819816fb25578cf00b059e0158869440c54697c1 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/VL53L4CD_platform.o.d 
	@${RM} ${OBJECTDIR}/VL53L4CD_platform.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/VL53L4CD_platform.o.d" -o ${OBJECTDIR}/VL53L4CD_platform.o VL53L4CD_platform.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/dst.o: dst.c  .generated_files/flags/default/556a350d3f199f592b1b363d366bd94547df0d08 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dst.o.d 
	@${RM} ${OBJECTDIR}/dst.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/dst.o.d" -o ${OBJECTDIR}/dst.o dst.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/config_bits.o: config_bits.c  .generated_files/flags/default/785a2b11a7e5465e61054558a8c6f85b73d8d6f0 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/config_bits.o.d 
	@${RM} ${OBJECTDIR}/config_bits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/config_bits.o.d" -o ${OBJECTDIR}/config_bits.o config_bits.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/led.o: led.c  .generated_files/flags/default/bbe805f753f20f2d9c6ef7e101ea282d01713df .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/led.o.d" -o ${OBJECTDIR}/led.o led.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/i2c.o: i2c.c  .generated_files/flags/default/ff6cd9dcfdfd7885a9d1c408a164360ecf5fcfb6 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/i2c.o.d" -o ${OBJECTDIR}/i2c.o i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/acl.o: acl.c  .generated_files/flags/default/1575e83d0735c46e2c78e570656d82ff20ddd48 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/acl.o.d 
	@${RM} ${OBJECTDIR}/acl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/acl.o.d" -o ${OBJECTDIR}/acl.o acl.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/adc.o: adc.c  .generated_files/flags/default/d8c20f683b6703452a7c946b02cd88f79372a5ce .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/aic.o: aic.c  .generated_files/flags/default/235bf72a7e0610de729eea66f76552474fef2e38 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/aic.o.d 
	@${RM} ${OBJECTDIR}/aic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/aic.o.d" -o ${OBJECTDIR}/aic.o aic.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/spiflash.o: spiflash.c  .generated_files/flags/default/7d7d023553c8fa848140ccc9ec79921f75966111 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spiflash.o.d 
	@${RM} ${OBJECTDIR}/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/spiflash.o.d" -o ${OBJECTDIR}/spiflash.o spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lcd.o: lcd.c  .generated_files/flags/default/d4328dd876996fd16348f54dc109fac356728ca3 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.o.d 
	@${RM} ${OBJECTDIR}/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lcd.o.d" -o ${OBJECTDIR}/lcd.o lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/uart.o: uart.c  .generated_files/flags/default/d2968c64b407756308d4403bbf389f7780e100fa .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart.o.d 
	@${RM} ${OBJECTDIR}/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/uart.o.d" -o ${OBJECTDIR}/uart.o uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/btn.o: btn.c  .generated_files/flags/default/988194db88889a273aa0e4482aadb86e8cb4f6af .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/btn.o.d 
	@${RM} ${OBJECTDIR}/btn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/btn.o.d" -o ${OBJECTDIR}/btn.o btn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/pmods.o: pmods.c  .generated_files/flags/default/6ed90b0970899574dd15ad137ba76f56447eab70 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pmods.o.d 
	@${RM} ${OBJECTDIR}/pmods.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/pmods.o.d" -o ${OBJECTDIR}/pmods.o pmods.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/45892a74b53e6ec22827154157ce8ccf469c7d5a .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/swt.o: swt.c  .generated_files/flags/default/38d45684c892c72c3dd08861eedfcdc791a13807 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/swt.o.d 
	@${RM} ${OBJECTDIR}/swt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/swt.o.d" -o ${OBJECTDIR}/swt.o swt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/date_time.o: date_time.c  .generated_files/flags/default/4bf5c39072a15f9686765e3e324b635f5d424062 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/date_time.o.d 
	@${RM} ${OBJECTDIR}/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/date_time.o.d" -o ${OBJECTDIR}/date_time.o date_time.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/ctrl.o: ctrl.c  .generated_files/flags/default/7b80305b4364cde308c0899aa63b830618dbab73 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ctrl.o.d 
	@${RM} ${OBJECTDIR}/ctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ctrl.o.d" -o ${OBJECTDIR}/ctrl.o ctrl.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/VL53L4CD_api.o: VL53L4CD_api.c  .generated_files/flags/default/82523998cd93050786c552178da4dea341e39bb7 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/VL53L4CD_api.o.d 
	@${RM} ${OBJECTDIR}/VL53L4CD_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/VL53L4CD_api.o.d" -o ${OBJECTDIR}/VL53L4CD_api.o VL53L4CD_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/VL53L4CD_calibration.o: VL53L4CD_calibration.c  .generated_files/flags/default/6bb34504f621d37f83d3ac92667d1526dfaf5b92 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/VL53L4CD_calibration.o.d 
	@${RM} ${OBJECTDIR}/VL53L4CD_calibration.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/VL53L4CD_calibration.o.d" -o ${OBJECTDIR}/VL53L4CD_calibration.o VL53L4CD_calibration.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/VL53L4CD_platform.o: VL53L4CD_platform.c  .generated_files/flags/default/801f717f8c430f4a1e7878b3198beb9d3a8f1b80 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/VL53L4CD_platform.o.d 
	@${RM} ${OBJECTDIR}/VL53L4CD_platform.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/VL53L4CD_platform.o.d" -o ${OBJECTDIR}/VL53L4CD_platform.o VL53L4CD_platform.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/dst.o: dst.c  .generated_files/flags/default/1a2a82c7e43402cccd8fd88545133c4d3e970fe2 .generated_files/flags/default/3af7d0cee9bc17bf9ff6ffb94390ad7a428d1e6a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dst.o.d 
	@${RM} ${OBJECTDIR}/dst.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/dst.o.d" -o ${OBJECTDIR}/dst.o dst.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/MX3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/MX3.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/MX3.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
