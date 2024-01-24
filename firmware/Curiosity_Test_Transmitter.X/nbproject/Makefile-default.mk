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
FINAL_IMAGE=${DISTDIR}/Curiosity_Test_Transmitter.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Curiosity_Test_Transmitter.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/app_p2p_phy/src/app_p2p_phy.c ../src/config/default/app_p2p_phy/app_phy_cmd_processor/src/app_phy_cmd_processor.c ../src/config/default/IEEE_802154_PHY/pal/src/pal.c ../src/config/default/IEEE_802154_PHY/phy/src/phy_tx_frame_done_cb.c ../src/config/default/IEEE_802154_PHY/phy/src/phy_rx_frame_cb.c ../src/config/default/IEEE_802154_PHY/phy/src/phy_task.c ../src/config/default/IEEE_802154_PHY/phy/src/phy_ed_end_cb.c ../src/config/default/IEEE_802154_PHY/resources/buffer/src/bmm.c ../src/config/default/IEEE_802154_PHY/resources/queue/src/qmm.c ../src/config/default/osal/osal_freertos.c ../src/config/default/osal/osal_freertos_extend.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/cache/sys_cache.c ../src/config/default/system/command/src/sys_command.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/reset/sys_reset.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/tasks.c ../src/config/default/freertos_hooks.c ../src/config/default/libc_syscalls.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_idle_task.c ../src/app.c ../src/app_user_edits.c ../src/transmit.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/297566330/app_p2p_phy.o ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o ${OBJECTDIR}/_ext/794496283/pal.o ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o ${OBJECTDIR}/_ext/1006906113/phy_task.o ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o ${OBJECTDIR}/_ext/1682558732/bmm.o ${OBJECTDIR}/_ext/637565607/qmm.o ${OBJECTDIR}/_ext/1529399856/osal_freertos.o ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ${OBJECTDIR}/_ext/1376093119/sys_command.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/246609638/port.o ${OBJECTDIR}/_ext/1665200909/heap_4.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_idle_task.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/app_user_edits.o ${OBJECTDIR}/_ext/1360937237/transmit.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/297566330/app_p2p_phy.o.d ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o.d ${OBJECTDIR}/_ext/794496283/pal.o.d ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o.d ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o.d ${OBJECTDIR}/_ext/1006906113/phy_task.o.d ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o.d ${OBJECTDIR}/_ext/1682558732/bmm.o.d ${OBJECTDIR}/_ext/637565607/qmm.o.d ${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d ${OBJECTDIR}/_ext/1376093119/sys_command.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/246609638/port.o.d ${OBJECTDIR}/_ext/1665200909/heap_4.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_idle_task.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/app_user_edits.o.d ${OBJECTDIR}/_ext/1360937237/transmit.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/297566330/app_p2p_phy.o ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o ${OBJECTDIR}/_ext/794496283/pal.o ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o ${OBJECTDIR}/_ext/1006906113/phy_task.o ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o ${OBJECTDIR}/_ext/1682558732/bmm.o ${OBJECTDIR}/_ext/637565607/qmm.o ${OBJECTDIR}/_ext/1529399856/osal_freertos.o ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ${OBJECTDIR}/_ext/1376093119/sys_command.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/246609638/port.o ${OBJECTDIR}/_ext/1665200909/heap_4.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_idle_task.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/app_user_edits.o ${OBJECTDIR}/_ext/1360937237/transmit.o

# Source Files
SOURCEFILES=../src/config/default/app_p2p_phy/src/app_p2p_phy.c ../src/config/default/app_p2p_phy/app_phy_cmd_processor/src/app_phy_cmd_processor.c ../src/config/default/IEEE_802154_PHY/pal/src/pal.c ../src/config/default/IEEE_802154_PHY/phy/src/phy_tx_frame_done_cb.c ../src/config/default/IEEE_802154_PHY/phy/src/phy_rx_frame_cb.c ../src/config/default/IEEE_802154_PHY/phy/src/phy_task.c ../src/config/default/IEEE_802154_PHY/phy/src/phy_ed_end_cb.c ../src/config/default/IEEE_802154_PHY/resources/buffer/src/bmm.c ../src/config/default/IEEE_802154_PHY/resources/queue/src/qmm.c ../src/config/default/osal/osal_freertos.c ../src/config/default/osal/osal_freertos_extend.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/cache/sys_cache.c ../src/config/default/system/command/src/sys_command.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/reset/sys_reset.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/tasks.c ../src/config/default/freertos_hooks.c ../src/config/default/libc_syscalls.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_idle_task.c ../src/app.c ../src/app_user_edits.c ../src/transmit.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Curiosity_Test_Transmitter.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=WBZ451
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\WBZ451.ld"
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
${OBJECTDIR}/_ext/297566330/app_p2p_phy.o: ../src/config/default/app_p2p_phy/src/app_p2p_phy.c  .generated_files/flags/default/41d4e273e6af8c61b2fd0e1786f81c2c3396bcf0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/297566330" 
	@${RM} ${OBJECTDIR}/_ext/297566330/app_p2p_phy.o.d 
	@${RM} ${OBJECTDIR}/_ext/297566330/app_p2p_phy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/297566330/app_p2p_phy.o.d" -o ${OBJECTDIR}/_ext/297566330/app_p2p_phy.o ../src/config/default/app_p2p_phy/src/app_p2p_phy.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o: ../src/config/default/app_p2p_phy/app_phy_cmd_processor/src/app_phy_cmd_processor.c  .generated_files/flags/default/aa511ede85615086237d8570c9bdffd40367490e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/767817240" 
	@${RM} ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o.d 
	@${RM} ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o.d" -o ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o ../src/config/default/app_p2p_phy/app_phy_cmd_processor/src/app_phy_cmd_processor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/794496283/pal.o: ../src/config/default/IEEE_802154_PHY/pal/src/pal.c  .generated_files/flags/default/ad5bfd5ae3b811908c97193d74421233eacfe905 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/794496283" 
	@${RM} ${OBJECTDIR}/_ext/794496283/pal.o.d 
	@${RM} ${OBJECTDIR}/_ext/794496283/pal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794496283/pal.o.d" -o ${OBJECTDIR}/_ext/794496283/pal.o ../src/config/default/IEEE_802154_PHY/pal/src/pal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o: ../src/config/default/IEEE_802154_PHY/phy/src/phy_tx_frame_done_cb.c  .generated_files/flags/default/4735e6fa1bd061bfd3658160e502b37af2c8d1b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1006906113" 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o.d" -o ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o ../src/config/default/IEEE_802154_PHY/phy/src/phy_tx_frame_done_cb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o: ../src/config/default/IEEE_802154_PHY/phy/src/phy_rx_frame_cb.c  .generated_files/flags/default/778e7d7b803ed35e2856cc8ee79bdc623364d7b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1006906113" 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o.d" -o ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o ../src/config/default/IEEE_802154_PHY/phy/src/phy_rx_frame_cb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1006906113/phy_task.o: ../src/config/default/IEEE_802154_PHY/phy/src/phy_task.c  .generated_files/flags/default/5ff6a34659d4faf5d70a0e827ce7cb68288d41cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1006906113" 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1006906113/phy_task.o.d" -o ${OBJECTDIR}/_ext/1006906113/phy_task.o ../src/config/default/IEEE_802154_PHY/phy/src/phy_task.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o: ../src/config/default/IEEE_802154_PHY/phy/src/phy_ed_end_cb.c  .generated_files/flags/default/f8e22a3887a77d192303db72f961df67cc2d6b28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1006906113" 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o.d" -o ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o ../src/config/default/IEEE_802154_PHY/phy/src/phy_ed_end_cb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1682558732/bmm.o: ../src/config/default/IEEE_802154_PHY/resources/buffer/src/bmm.c  .generated_files/flags/default/feefce0488a626a6015e5f8c6a174734ba6fecfd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1682558732" 
	@${RM} ${OBJECTDIR}/_ext/1682558732/bmm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1682558732/bmm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1682558732/bmm.o.d" -o ${OBJECTDIR}/_ext/1682558732/bmm.o ../src/config/default/IEEE_802154_PHY/resources/buffer/src/bmm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/637565607/qmm.o: ../src/config/default/IEEE_802154_PHY/resources/queue/src/qmm.c  .generated_files/flags/default/c88b0e66c74663045e8d8e2869cad983caaa0129 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/637565607" 
	@${RM} ${OBJECTDIR}/_ext/637565607/qmm.o.d 
	@${RM} ${OBJECTDIR}/_ext/637565607/qmm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/637565607/qmm.o.d" -o ${OBJECTDIR}/_ext/637565607/qmm.o ../src/config/default/IEEE_802154_PHY/resources/queue/src/qmm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1529399856/osal_freertos.o: ../src/config/default/osal/osal_freertos.c  .generated_files/flags/default/5f9602d154d3bb526324c2c3372155bf4c9eb464 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1529399856" 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1529399856/osal_freertos.o ../src/config/default/osal/osal_freertos.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o: ../src/config/default/osal/osal_freertos_extend.c  .generated_files/flags/default/9029443f1c65559ed56887fa52117abf21bd387c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1529399856" 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o.d" -o ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o ../src/config/default/osal/osal_freertos_extend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/7130a4aff5e95a195715911657e08a2d5088ddd8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/a57224f10a93ccc1c1d5edc3ed414632d7cbf02a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/6cba66f219ba1fe7ce9203470d5fde26a0517430 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/31caf8ed3c1e2c9f8d4c621f78169b5a2c253c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/dd7496352e95fca9e24ed11b01ce6699ba6342f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/flags/default/b7205570d583f97c87994e445ab00e5016fd568d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ../src/config/default/peripheral/nvm/plib_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/ffc673fb1a37e66552501b714190db8a8762855a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/657976545c610a7f67014d48d802713284cca6d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/9477fad265614d8bd06c127ff6fb524bef1ebf5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  .generated_files/flags/default/841c59e2048ca747721f33ecd7440aa68a9ddb20 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1376093119/sys_command.o: ../src/config/default/system/command/src/sys_command.c  .generated_files/flags/default/77f8e3b37d83ee8c4562ab7369bbb1f396830d2c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1376093119" 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" -o ${OBJECTDIR}/_ext/1376093119/sys_command.o ../src/config/default/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/fc3a188054a77143ec43cd6eda2cd19df61e1515 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/flags/default/56303ea0e24a07e283ec567d7abb159c696a9798 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/b0d3d4b16c6ef358daa7a6ee7339bc069ac05b57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1000052432/sys_reset.o: ../src/config/default/system/reset/sys_reset.c  .generated_files/flags/default/554aa8bc30f92968cf496da55710d79da70eef48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1000052432" 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1000052432/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ../src/config/default/system/reset/sys_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/71e7bfa69e57c045e895e39878698d66e59f9721 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/6c0b6df295d739e2f4935acd46f0cb84a0de0ec7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/a44af8cb688f3cadda165e819802f61c0ca44a53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/bfcb2d02681a7809ece08464c9ac88ec2aad7a6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/3670ceb4e7bd376fe6b38b3aad9fbb11c11f51ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/d9bb9df310204307c53baf5cc1f05f2c5f46605e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/freertos_hooks.o: ../src/config/default/freertos_hooks.c  .generated_files/flags/default/a7dc5a1ad068fe9a7b0e99badd077fb1d34ef42a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o ../src/config/default/freertos_hooks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/82227be43870436e0215f413cb730be5a9ab323e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/246609638/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F/port.c  .generated_files/flags/default/bf410886cc5257fe55afb0d4541a2a77f2db2034 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/246609638" 
	@${RM} ${OBJECTDIR}/_ext/246609638/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/246609638/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/246609638/port.o.d" -o ${OBJECTDIR}/_ext/246609638/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_4.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/default/91f316c669270a7f79a3a533fa2a2b07f61083d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_4.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_4.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/default/9a3c545774df77ac934d2b36d45ed131eb4491ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/default/143243370915efc624316be406731350260152fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/default/42a8c7a19e4b304659d979308d09c4c1867f58c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/default/2f66cd45e9b6ee3278ca936c5ce036f2203e5244 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/default/82551228f906971cc032e2a45ee422d5cf0acd81 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/default/1dfde71faaac4dc4846f00c33c33b322e2e8b3ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/default/36c0151e4a253c7affa939a7bd3894819bb035c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/9e7d8ceee41ec571c7f58682d772785acfdaba82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_idle_task.o: ../src/app_idle_task.c  .generated_files/flags/default/dce673dfb2363c3315b902f92888850f5a531b64 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_idle_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_idle_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_idle_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_idle_task.o ../src/app_idle_task.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/6a13be63332a431f6aeeaaf0fb5a6e732084581c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_user_edits.o: ../src/app_user_edits.c  .generated_files/flags/default/eae57f2a0fde80796c83a2b8bc3d616dde652275 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_user_edits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_user_edits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_user_edits.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_user_edits.o ../src/app_user_edits.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/transmit.o: ../src/transmit.c  .generated_files/flags/default/f960040bdb497e43582191fe7737917a5338a463 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/transmit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/transmit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/transmit.o.d" -o ${OBJECTDIR}/_ext/1360937237/transmit.o ../src/transmit.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/297566330/app_p2p_phy.o: ../src/config/default/app_p2p_phy/src/app_p2p_phy.c  .generated_files/flags/default/bbb3f2c6717ce727ac77a37c40b683bd430c4537 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/297566330" 
	@${RM} ${OBJECTDIR}/_ext/297566330/app_p2p_phy.o.d 
	@${RM} ${OBJECTDIR}/_ext/297566330/app_p2p_phy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/297566330/app_p2p_phy.o.d" -o ${OBJECTDIR}/_ext/297566330/app_p2p_phy.o ../src/config/default/app_p2p_phy/src/app_p2p_phy.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o: ../src/config/default/app_p2p_phy/app_phy_cmd_processor/src/app_phy_cmd_processor.c  .generated_files/flags/default/e8ccf5885dc1e847227774fe14de53c25a9527b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/767817240" 
	@${RM} ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o.d 
	@${RM} ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o.d" -o ${OBJECTDIR}/_ext/767817240/app_phy_cmd_processor.o ../src/config/default/app_p2p_phy/app_phy_cmd_processor/src/app_phy_cmd_processor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/794496283/pal.o: ../src/config/default/IEEE_802154_PHY/pal/src/pal.c  .generated_files/flags/default/8fc0a56a7e63bb390e2d3af347ff09caeff92913 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/794496283" 
	@${RM} ${OBJECTDIR}/_ext/794496283/pal.o.d 
	@${RM} ${OBJECTDIR}/_ext/794496283/pal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794496283/pal.o.d" -o ${OBJECTDIR}/_ext/794496283/pal.o ../src/config/default/IEEE_802154_PHY/pal/src/pal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o: ../src/config/default/IEEE_802154_PHY/phy/src/phy_tx_frame_done_cb.c  .generated_files/flags/default/a055885d414c341a4895add073ae4211987f12b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1006906113" 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o.d" -o ${OBJECTDIR}/_ext/1006906113/phy_tx_frame_done_cb.o ../src/config/default/IEEE_802154_PHY/phy/src/phy_tx_frame_done_cb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o: ../src/config/default/IEEE_802154_PHY/phy/src/phy_rx_frame_cb.c  .generated_files/flags/default/92564dd21c49d42a9b80b81053623ba431e4746d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1006906113" 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o.d" -o ${OBJECTDIR}/_ext/1006906113/phy_rx_frame_cb.o ../src/config/default/IEEE_802154_PHY/phy/src/phy_rx_frame_cb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1006906113/phy_task.o: ../src/config/default/IEEE_802154_PHY/phy/src/phy_task.c  .generated_files/flags/default/50d22cf7785941189a13bd034922ec5e5af68a20 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1006906113" 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1006906113/phy_task.o.d" -o ${OBJECTDIR}/_ext/1006906113/phy_task.o ../src/config/default/IEEE_802154_PHY/phy/src/phy_task.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o: ../src/config/default/IEEE_802154_PHY/phy/src/phy_ed_end_cb.c  .generated_files/flags/default/e4e1649b9edd54221d60d8ea934bdddfb7a8d2b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1006906113" 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o.d" -o ${OBJECTDIR}/_ext/1006906113/phy_ed_end_cb.o ../src/config/default/IEEE_802154_PHY/phy/src/phy_ed_end_cb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1682558732/bmm.o: ../src/config/default/IEEE_802154_PHY/resources/buffer/src/bmm.c  .generated_files/flags/default/54a862b0e9283b6d828257ff3a0f7e0070f5cee6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1682558732" 
	@${RM} ${OBJECTDIR}/_ext/1682558732/bmm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1682558732/bmm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1682558732/bmm.o.d" -o ${OBJECTDIR}/_ext/1682558732/bmm.o ../src/config/default/IEEE_802154_PHY/resources/buffer/src/bmm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/637565607/qmm.o: ../src/config/default/IEEE_802154_PHY/resources/queue/src/qmm.c  .generated_files/flags/default/d6df022db45a25b3a1d3baf094214a195faad59d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/637565607" 
	@${RM} ${OBJECTDIR}/_ext/637565607/qmm.o.d 
	@${RM} ${OBJECTDIR}/_ext/637565607/qmm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/637565607/qmm.o.d" -o ${OBJECTDIR}/_ext/637565607/qmm.o ../src/config/default/IEEE_802154_PHY/resources/queue/src/qmm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1529399856/osal_freertos.o: ../src/config/default/osal/osal_freertos.c  .generated_files/flags/default/43418da5a0d5ed56f19f3e1e4c6e5b60c6958c10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1529399856" 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1529399856/osal_freertos.o ../src/config/default/osal/osal_freertos.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o: ../src/config/default/osal/osal_freertos_extend.c  .generated_files/flags/default/4be059153dae8185aa14c864ac85cb1330064abf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1529399856" 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o.d" -o ${OBJECTDIR}/_ext/1529399856/osal_freertos_extend.o ../src/config/default/osal/osal_freertos_extend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/edfd67a167186ca6e9059f7e9d9157af4a6cbe28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/f6c2096e1b3631f04a6f6f59ac1a7191526eceac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/19bc322b325df44fcae12cf5075e7206f7d5a36f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/c7cae9319d662d29e138e6a3992cfb12692ad073 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/ff5713285ade92c1ec2249af37d80b003f986c2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/flags/default/ecfb254ecd243617557461162d725cb869b1644a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ../src/config/default/peripheral/nvm/plib_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/a8407fba1c1f530b389f1754a867f599343f3409 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/3eb50d68817ffe941512d92ce8300d81d78d721d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/d84eac20b47e427ae0ddfa0d4b619f57697a6a21 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  .generated_files/flags/default/f6b429920f16a57f83bcea29996b475e9f1835d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1376093119/sys_command.o: ../src/config/default/system/command/src/sys_command.c  .generated_files/flags/default/e50cc8b180d447852335c0c4f96866b21c12301 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1376093119" 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" -o ${OBJECTDIR}/_ext/1376093119/sys_command.o ../src/config/default/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/65fce3a1504b611c433c87918fe3033a32b9c63c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/flags/default/d01a5f1b4563d32beae15e023170d44ee4055b2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/41c234c61036ed1ad2fe7c0009360d40ffcd3b8e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1000052432/sys_reset.o: ../src/config/default/system/reset/sys_reset.c  .generated_files/flags/default/c760605b5c8a58f6eafcf378e38e081a35e3f53e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1000052432" 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1000052432/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ../src/config/default/system/reset/sys_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/8ae2d8deb842d3b9341e86375bf54bf57d561648 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/10684857b80384441a90fc83249b26f9b27bb9ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/b09de6d20e61e608e2fd84617a1fdf0dd606aac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/11c0bed314bb7298d544b0ee15918b8de652a415 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/f0cdffbf7b58e4dd2d9ce43dd98b994f5dd55eb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/81402d51ffb299bbdb2bf4f13813e8c54b8a4e9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/freertos_hooks.o: ../src/config/default/freertos_hooks.c  .generated_files/flags/default/90b42230fd0d20dab94b8c678a94966c64048c46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o ../src/config/default/freertos_hooks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/d88cc999bc4d4fd01c11d1ebf4498d25a40122de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/246609638/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F/port.c  .generated_files/flags/default/10a99e5518a7817f0fe2041b5ce84e49e59a1951 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/246609638" 
	@${RM} ${OBJECTDIR}/_ext/246609638/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/246609638/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/246609638/port.o.d" -o ${OBJECTDIR}/_ext/246609638/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_4.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/default/eb3350c6fc3cad46e9ba810ec8f33a5c6bf08a3b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_4.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_4.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/default/81e578cd7c50ecc8a7a328732c22c786447eaf25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/default/991e5296e9dea840efe76d54733a84c070c4c588 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/default/65c47185095179994ad73d82ebd1f40b7dd192fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/default/d8bc892b4f9476cd7afd9469fbe2b1047b6d3e9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/default/b0df0de0e40ca21f3014d3f11be5aa7db63c3788 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/default/3780e8521fecd1401098811f6be1188a238b9c13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/default/e6c387c809884ee76d7f142f6b48826eed98f80f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/ba6369fe5f29d7c554571e063d0625dfed5f35dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_idle_task.o: ../src/app_idle_task.c  .generated_files/flags/default/cb3c712c8fcb4ec39617ce110ddf0c76af413e53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_idle_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_idle_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_idle_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_idle_task.o ../src/app_idle_task.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/91154bc6ede9fd65511b5e646c78440af18ecf7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_user_edits.o: ../src/app_user_edits.c  .generated_files/flags/default/52da8e46180461b38e353cea63da87a52cc4ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_user_edits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_user_edits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_user_edits.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_user_edits.o ../src/app_user_edits.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/transmit.o: ../src/transmit.c  .generated_files/flags/default/3a45fed339c20c41b45e234b5ea21ad6926aff4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/transmit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/transmit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fcommon -DENABLE_LARGE_BUFFER -DENABLE_QUEUE_CAPACITY -I"../src" -I"../src/config/default" -I"../src/config/default/IEEE_802154_PHY/pal/inc" -I"../src/config/default/IEEE_802154_PHY/phy/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/buffer/inc/" -I"../src/config/default/IEEE_802154_PHY/resources/queue/inc/" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/WBZ451_DFP" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/transmit.o.d" -o ${OBJECTDIR}/_ext/1360937237/transmit.o ../src/transmit.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/WBZ451" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Curiosity_Test_Transmitter.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/default/driver/pds/pds.a ../src/config/default/driver/device_support/pic32cx_bz2_device_support.a ../src/config/default/lib/lib-ieee802154_phy_pic32cxbz-v1.0.0.a  ../src/config/default/WBZ451.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/Curiosity_Test_Transmitter.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\default\driver\pds\pds.a ..\src\config\default\driver\device_support\pic32cx_bz2_device_support.a ..\src\config\default\lib\lib-ieee802154_phy_pic32cxbz-v1.0.0.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/WBZ451"
	
else
${DISTDIR}/Curiosity_Test_Transmitter.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/default/driver/pds/pds.a ../src/config/default/driver/device_support/pic32cx_bz2_device_support.a ../src/config/default/lib/lib-ieee802154_phy_pic32cxbz-v1.0.0.a ../src/config/default/WBZ451.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/Curiosity_Test_Transmitter.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\default\driver\pds\pds.a ..\src\config\default\driver\device_support\pic32cx_bz2_device_support.a ..\src\config\default\lib\lib-ieee802154_phy_pic32cxbz-v1.0.0.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/WBZ451"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Curiosity_Test_Transmitter.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
