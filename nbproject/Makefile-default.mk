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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=SLCD/readaddr.c SLCD/readdata.c SLCD/setcgram.c SLCD/setddram.c SLCD/writdata.c SLCD/busyslcd.c SLCD/openslcd.c SLCD/putsslcd.c SLCD/wcmdslcd.c SLCD/putrslcd.c ../tcpip/ETH97J60.c ../tcpip/announce.c ../tcpip/arc4.c ../tcpip/arp.c ../tcpip/auto_ip.c ../tcpip/berkeley_api.c ../tcpip/big_int.c ../tcpip/ddns.c ../tcpip/delay.c ../tcpip/dhcp_client.c ../tcpip/dhcp_server.c ../tcpip/dns_client.c ../tcpip/dns_server.c ../tcpip/file_system.c ../tcpip/ftp.c ../tcpip/hashes.c ../tcpip/helpers.c ../tcpip/http2.c ../tcpip/icmp.c ../tcpip/ip.c ../tcpip/lcd_blocking.c ../tcpip/mpfs2.c ../tcpip/nbns.c ../tcpip/random.c ../tcpip/reboot.c ../tcpip/rsa.c ../tcpip/smtp.c ../tcpip/sntp.c ../tcpip/spi_eeprom.c ../tcpip/spi_flash.c ../tcpip/spi_ram.c ../tcpip/ssl.c ../tcpip/stack_task.c ../tcpip/tcp.c ../tcpip/tcp_performance_test.c ../tcpip/telnet.c ../tcpip/tftp.c ../tcpip/tick.c ../tcpip/uart.c ../tcpip/uart_to_tcp_bridge.c ../tcpip/udp.c ../tcpip/udp_performance_test.c ../tcpip/zero_conf_helper.c ../tcpip/zero_conf_link_local.c ../tcpip/zero_conf_link_multicast_dns.c main.c LCDDelay.c LCD.c Persistence.c Device.c IR.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/SLCD/readaddr.p1 ${OBJECTDIR}/SLCD/readdata.p1 ${OBJECTDIR}/SLCD/setcgram.p1 ${OBJECTDIR}/SLCD/setddram.p1 ${OBJECTDIR}/SLCD/writdata.p1 ${OBJECTDIR}/SLCD/busyslcd.p1 ${OBJECTDIR}/SLCD/openslcd.p1 ${OBJECTDIR}/SLCD/putsslcd.p1 ${OBJECTDIR}/SLCD/wcmdslcd.p1 ${OBJECTDIR}/SLCD/putrslcd.p1 ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1 ${OBJECTDIR}/_ext/2103848007/announce.p1 ${OBJECTDIR}/_ext/2103848007/arc4.p1 ${OBJECTDIR}/_ext/2103848007/arp.p1 ${OBJECTDIR}/_ext/2103848007/auto_ip.p1 ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1 ${OBJECTDIR}/_ext/2103848007/big_int.p1 ${OBJECTDIR}/_ext/2103848007/ddns.p1 ${OBJECTDIR}/_ext/2103848007/delay.p1 ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1 ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1 ${OBJECTDIR}/_ext/2103848007/dns_client.p1 ${OBJECTDIR}/_ext/2103848007/dns_server.p1 ${OBJECTDIR}/_ext/2103848007/file_system.p1 ${OBJECTDIR}/_ext/2103848007/ftp.p1 ${OBJECTDIR}/_ext/2103848007/hashes.p1 ${OBJECTDIR}/_ext/2103848007/helpers.p1 ${OBJECTDIR}/_ext/2103848007/http2.p1 ${OBJECTDIR}/_ext/2103848007/icmp.p1 ${OBJECTDIR}/_ext/2103848007/ip.p1 ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1 ${OBJECTDIR}/_ext/2103848007/mpfs2.p1 ${OBJECTDIR}/_ext/2103848007/nbns.p1 ${OBJECTDIR}/_ext/2103848007/random.p1 ${OBJECTDIR}/_ext/2103848007/reboot.p1 ${OBJECTDIR}/_ext/2103848007/rsa.p1 ${OBJECTDIR}/_ext/2103848007/smtp.p1 ${OBJECTDIR}/_ext/2103848007/sntp.p1 ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1 ${OBJECTDIR}/_ext/2103848007/spi_flash.p1 ${OBJECTDIR}/_ext/2103848007/spi_ram.p1 ${OBJECTDIR}/_ext/2103848007/ssl.p1 ${OBJECTDIR}/_ext/2103848007/stack_task.p1 ${OBJECTDIR}/_ext/2103848007/tcp.p1 ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1 ${OBJECTDIR}/_ext/2103848007/telnet.p1 ${OBJECTDIR}/_ext/2103848007/tftp.p1 ${OBJECTDIR}/_ext/2103848007/tick.p1 ${OBJECTDIR}/_ext/2103848007/uart.p1 ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1 ${OBJECTDIR}/_ext/2103848007/udp.p1 ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1 ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1 ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1 ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/LCDDelay.p1 ${OBJECTDIR}/LCD.p1 ${OBJECTDIR}/Persistence.p1 ${OBJECTDIR}/Device.p1 ${OBJECTDIR}/IR.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/SLCD/readaddr.p1.d ${OBJECTDIR}/SLCD/readdata.p1.d ${OBJECTDIR}/SLCD/setcgram.p1.d ${OBJECTDIR}/SLCD/setddram.p1.d ${OBJECTDIR}/SLCD/writdata.p1.d ${OBJECTDIR}/SLCD/busyslcd.p1.d ${OBJECTDIR}/SLCD/openslcd.p1.d ${OBJECTDIR}/SLCD/putsslcd.p1.d ${OBJECTDIR}/SLCD/wcmdslcd.p1.d ${OBJECTDIR}/SLCD/putrslcd.p1.d ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1.d ${OBJECTDIR}/_ext/2103848007/announce.p1.d ${OBJECTDIR}/_ext/2103848007/arc4.p1.d ${OBJECTDIR}/_ext/2103848007/arp.p1.d ${OBJECTDIR}/_ext/2103848007/auto_ip.p1.d ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1.d ${OBJECTDIR}/_ext/2103848007/big_int.p1.d ${OBJECTDIR}/_ext/2103848007/ddns.p1.d ${OBJECTDIR}/_ext/2103848007/delay.p1.d ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1.d ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1.d ${OBJECTDIR}/_ext/2103848007/dns_client.p1.d ${OBJECTDIR}/_ext/2103848007/dns_server.p1.d ${OBJECTDIR}/_ext/2103848007/file_system.p1.d ${OBJECTDIR}/_ext/2103848007/ftp.p1.d ${OBJECTDIR}/_ext/2103848007/hashes.p1.d ${OBJECTDIR}/_ext/2103848007/helpers.p1.d ${OBJECTDIR}/_ext/2103848007/http2.p1.d ${OBJECTDIR}/_ext/2103848007/icmp.p1.d ${OBJECTDIR}/_ext/2103848007/ip.p1.d ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1.d ${OBJECTDIR}/_ext/2103848007/mpfs2.p1.d ${OBJECTDIR}/_ext/2103848007/nbns.p1.d ${OBJECTDIR}/_ext/2103848007/random.p1.d ${OBJECTDIR}/_ext/2103848007/reboot.p1.d ${OBJECTDIR}/_ext/2103848007/rsa.p1.d ${OBJECTDIR}/_ext/2103848007/smtp.p1.d ${OBJECTDIR}/_ext/2103848007/sntp.p1.d ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1.d ${OBJECTDIR}/_ext/2103848007/spi_flash.p1.d ${OBJECTDIR}/_ext/2103848007/spi_ram.p1.d ${OBJECTDIR}/_ext/2103848007/ssl.p1.d ${OBJECTDIR}/_ext/2103848007/stack_task.p1.d ${OBJECTDIR}/_ext/2103848007/tcp.p1.d ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1.d ${OBJECTDIR}/_ext/2103848007/telnet.p1.d ${OBJECTDIR}/_ext/2103848007/tftp.p1.d ${OBJECTDIR}/_ext/2103848007/tick.p1.d ${OBJECTDIR}/_ext/2103848007/uart.p1.d ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1.d ${OBJECTDIR}/_ext/2103848007/udp.p1.d ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1.d ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1.d ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1.d ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/LCDDelay.p1.d ${OBJECTDIR}/LCD.p1.d ${OBJECTDIR}/Persistence.p1.d ${OBJECTDIR}/Device.p1.d ${OBJECTDIR}/IR.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/SLCD/readaddr.p1 ${OBJECTDIR}/SLCD/readdata.p1 ${OBJECTDIR}/SLCD/setcgram.p1 ${OBJECTDIR}/SLCD/setddram.p1 ${OBJECTDIR}/SLCD/writdata.p1 ${OBJECTDIR}/SLCD/busyslcd.p1 ${OBJECTDIR}/SLCD/openslcd.p1 ${OBJECTDIR}/SLCD/putsslcd.p1 ${OBJECTDIR}/SLCD/wcmdslcd.p1 ${OBJECTDIR}/SLCD/putrslcd.p1 ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1 ${OBJECTDIR}/_ext/2103848007/announce.p1 ${OBJECTDIR}/_ext/2103848007/arc4.p1 ${OBJECTDIR}/_ext/2103848007/arp.p1 ${OBJECTDIR}/_ext/2103848007/auto_ip.p1 ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1 ${OBJECTDIR}/_ext/2103848007/big_int.p1 ${OBJECTDIR}/_ext/2103848007/ddns.p1 ${OBJECTDIR}/_ext/2103848007/delay.p1 ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1 ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1 ${OBJECTDIR}/_ext/2103848007/dns_client.p1 ${OBJECTDIR}/_ext/2103848007/dns_server.p1 ${OBJECTDIR}/_ext/2103848007/file_system.p1 ${OBJECTDIR}/_ext/2103848007/ftp.p1 ${OBJECTDIR}/_ext/2103848007/hashes.p1 ${OBJECTDIR}/_ext/2103848007/helpers.p1 ${OBJECTDIR}/_ext/2103848007/http2.p1 ${OBJECTDIR}/_ext/2103848007/icmp.p1 ${OBJECTDIR}/_ext/2103848007/ip.p1 ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1 ${OBJECTDIR}/_ext/2103848007/mpfs2.p1 ${OBJECTDIR}/_ext/2103848007/nbns.p1 ${OBJECTDIR}/_ext/2103848007/random.p1 ${OBJECTDIR}/_ext/2103848007/reboot.p1 ${OBJECTDIR}/_ext/2103848007/rsa.p1 ${OBJECTDIR}/_ext/2103848007/smtp.p1 ${OBJECTDIR}/_ext/2103848007/sntp.p1 ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1 ${OBJECTDIR}/_ext/2103848007/spi_flash.p1 ${OBJECTDIR}/_ext/2103848007/spi_ram.p1 ${OBJECTDIR}/_ext/2103848007/ssl.p1 ${OBJECTDIR}/_ext/2103848007/stack_task.p1 ${OBJECTDIR}/_ext/2103848007/tcp.p1 ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1 ${OBJECTDIR}/_ext/2103848007/telnet.p1 ${OBJECTDIR}/_ext/2103848007/tftp.p1 ${OBJECTDIR}/_ext/2103848007/tick.p1 ${OBJECTDIR}/_ext/2103848007/uart.p1 ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1 ${OBJECTDIR}/_ext/2103848007/udp.p1 ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1 ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1 ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1 ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/LCDDelay.p1 ${OBJECTDIR}/LCD.p1 ${OBJECTDIR}/Persistence.p1 ${OBJECTDIR}/Device.p1 ${OBJECTDIR}/IR.p1

# Source Files
SOURCEFILES=SLCD/readaddr.c SLCD/readdata.c SLCD/setcgram.c SLCD/setddram.c SLCD/writdata.c SLCD/busyslcd.c SLCD/openslcd.c SLCD/putsslcd.c SLCD/wcmdslcd.c SLCD/putrslcd.c ../tcpip/ETH97J60.c ../tcpip/announce.c ../tcpip/arc4.c ../tcpip/arp.c ../tcpip/auto_ip.c ../tcpip/berkeley_api.c ../tcpip/big_int.c ../tcpip/ddns.c ../tcpip/delay.c ../tcpip/dhcp_client.c ../tcpip/dhcp_server.c ../tcpip/dns_client.c ../tcpip/dns_server.c ../tcpip/file_system.c ../tcpip/ftp.c ../tcpip/hashes.c ../tcpip/helpers.c ../tcpip/http2.c ../tcpip/icmp.c ../tcpip/ip.c ../tcpip/lcd_blocking.c ../tcpip/mpfs2.c ../tcpip/nbns.c ../tcpip/random.c ../tcpip/reboot.c ../tcpip/rsa.c ../tcpip/smtp.c ../tcpip/sntp.c ../tcpip/spi_eeprom.c ../tcpip/spi_flash.c ../tcpip/spi_ram.c ../tcpip/ssl.c ../tcpip/stack_task.c ../tcpip/tcp.c ../tcpip/tcp_performance_test.c ../tcpip/telnet.c ../tcpip/tftp.c ../tcpip/tick.c ../tcpip/uart.c ../tcpip/uart_to_tcp_bridge.c ../tcpip/udp.c ../tcpip/udp_performance_test.c ../tcpip/zero_conf_helper.c ../tcpip/zero_conf_link_local.c ../tcpip/zero_conf_link_multicast_dns.c main.c LCDDelay.c LCD.c Persistence.c Device.c IR.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F67J60
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/SLCD/readaddr.p1: SLCD/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/readaddr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/readaddr.p1  SLCD/readaddr.c 
	@-${MV} ${OBJECTDIR}/SLCD/readaddr.d ${OBJECTDIR}/SLCD/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/readdata.p1: SLCD/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/readdata.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/readdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/readdata.p1  SLCD/readdata.c 
	@-${MV} ${OBJECTDIR}/SLCD/readdata.d ${OBJECTDIR}/SLCD/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/setcgram.p1: SLCD/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/setcgram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/setcgram.p1  SLCD/setcgram.c 
	@-${MV} ${OBJECTDIR}/SLCD/setcgram.d ${OBJECTDIR}/SLCD/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/setddram.p1: SLCD/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/setddram.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/setddram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/setddram.p1  SLCD/setddram.c 
	@-${MV} ${OBJECTDIR}/SLCD/setddram.d ${OBJECTDIR}/SLCD/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/writdata.p1: SLCD/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/writdata.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/writdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/writdata.p1  SLCD/writdata.c 
	@-${MV} ${OBJECTDIR}/SLCD/writdata.d ${OBJECTDIR}/SLCD/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/busyslcd.p1: SLCD/busyslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/busyslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/busyslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/busyslcd.p1  SLCD/busyslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/busyslcd.d ${OBJECTDIR}/SLCD/busyslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/busyslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/openslcd.p1: SLCD/openslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/openslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/openslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/openslcd.p1  SLCD/openslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/openslcd.d ${OBJECTDIR}/SLCD/openslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/openslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/putsslcd.p1: SLCD/putsslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/putsslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/putsslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/putsslcd.p1  SLCD/putsslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/putsslcd.d ${OBJECTDIR}/SLCD/putsslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/putsslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/wcmdslcd.p1: SLCD/wcmdslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/wcmdslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/wcmdslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/wcmdslcd.p1  SLCD/wcmdslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/wcmdslcd.d ${OBJECTDIR}/SLCD/wcmdslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/wcmdslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/putrslcd.p1: SLCD/putrslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/putrslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/putrslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/putrslcd.p1  SLCD/putrslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/putrslcd.d ${OBJECTDIR}/SLCD/putrslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/putrslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ETH97J60.p1: ../tcpip/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ETH97J60.p1  ../tcpip/ETH97J60.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ETH97J60.d ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/announce.p1: ../tcpip/announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/announce.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/announce.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/announce.p1  ../tcpip/announce.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/announce.d ${OBJECTDIR}/_ext/2103848007/announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/announce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/arc4.p1: ../tcpip/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/arc4.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/arc4.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/arc4.p1  ../tcpip/arc4.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/arc4.d ${OBJECTDIR}/_ext/2103848007/arc4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/arc4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/arp.p1: ../tcpip/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/arp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/arp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/arp.p1  ../tcpip/arp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/arp.d ${OBJECTDIR}/_ext/2103848007/arp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/arp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/auto_ip.p1: ../tcpip/auto_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/auto_ip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/auto_ip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/auto_ip.p1  ../tcpip/auto_ip.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/auto_ip.d ${OBJECTDIR}/_ext/2103848007/auto_ip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/auto_ip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/berkeley_api.p1: ../tcpip/berkeley_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/berkeley_api.p1  ../tcpip/berkeley_api.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/berkeley_api.d ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/big_int.p1: ../tcpip/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/big_int.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/big_int.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/big_int.p1  ../tcpip/big_int.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/big_int.d ${OBJECTDIR}/_ext/2103848007/big_int.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/big_int.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ddns.p1: ../tcpip/ddns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ddns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ddns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ddns.p1  ../tcpip/ddns.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ddns.d ${OBJECTDIR}/_ext/2103848007/ddns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ddns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/delay.p1: ../tcpip/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/delay.p1  ../tcpip/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/delay.d ${OBJECTDIR}/_ext/2103848007/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/dhcp_client.p1: ../tcpip/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/dhcp_client.p1  ../tcpip/dhcp_client.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/dhcp_client.d ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/dhcp_server.p1: ../tcpip/dhcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/dhcp_server.p1  ../tcpip/dhcp_server.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/dhcp_server.d ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/dns_client.p1: ../tcpip/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dns_client.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dns_client.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/dns_client.p1  ../tcpip/dns_client.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/dns_client.d ${OBJECTDIR}/_ext/2103848007/dns_client.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/dns_client.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/dns_server.p1: ../tcpip/dns_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dns_server.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dns_server.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/dns_server.p1  ../tcpip/dns_server.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/dns_server.d ${OBJECTDIR}/_ext/2103848007/dns_server.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/dns_server.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/file_system.p1: ../tcpip/file_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/file_system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/file_system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/file_system.p1  ../tcpip/file_system.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/file_system.d ${OBJECTDIR}/_ext/2103848007/file_system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/file_system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ftp.p1: ../tcpip/ftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ftp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ftp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ftp.p1  ../tcpip/ftp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ftp.d ${OBJECTDIR}/_ext/2103848007/ftp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ftp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/hashes.p1: ../tcpip/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/hashes.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/hashes.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/hashes.p1  ../tcpip/hashes.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/hashes.d ${OBJECTDIR}/_ext/2103848007/hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/hashes.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/helpers.p1: ../tcpip/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/helpers.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/helpers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/helpers.p1  ../tcpip/helpers.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/helpers.d ${OBJECTDIR}/_ext/2103848007/helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/helpers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/http2.p1: ../tcpip/http2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/http2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/http2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/http2.p1  ../tcpip/http2.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/http2.d ${OBJECTDIR}/_ext/2103848007/http2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/http2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/icmp.p1: ../tcpip/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/icmp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/icmp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/icmp.p1  ../tcpip/icmp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/icmp.d ${OBJECTDIR}/_ext/2103848007/icmp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/icmp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ip.p1: ../tcpip/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ip.p1  ../tcpip/ip.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ip.d ${OBJECTDIR}/_ext/2103848007/ip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1: ../tcpip/lcd_blocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1  ../tcpip/lcd_blocking.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/lcd_blocking.d ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/mpfs2.p1: ../tcpip/mpfs2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/mpfs2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/mpfs2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/mpfs2.p1  ../tcpip/mpfs2.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/mpfs2.d ${OBJECTDIR}/_ext/2103848007/mpfs2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/mpfs2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/nbns.p1: ../tcpip/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/nbns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/nbns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/nbns.p1  ../tcpip/nbns.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/nbns.d ${OBJECTDIR}/_ext/2103848007/nbns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/nbns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/random.p1: ../tcpip/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/random.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/random.p1  ../tcpip/random.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/random.d ${OBJECTDIR}/_ext/2103848007/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/reboot.p1: ../tcpip/reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/reboot.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/reboot.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/reboot.p1  ../tcpip/reboot.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/reboot.d ${OBJECTDIR}/_ext/2103848007/reboot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/reboot.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/rsa.p1: ../tcpip/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/rsa.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/rsa.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/rsa.p1  ../tcpip/rsa.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/rsa.d ${OBJECTDIR}/_ext/2103848007/rsa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/rsa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/smtp.p1: ../tcpip/smtp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/smtp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/smtp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/smtp.p1  ../tcpip/smtp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/smtp.d ${OBJECTDIR}/_ext/2103848007/smtp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/smtp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/sntp.p1: ../tcpip/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/sntp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/sntp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/sntp.p1  ../tcpip/sntp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/sntp.d ${OBJECTDIR}/_ext/2103848007/sntp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/sntp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1: ../tcpip/spi_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1  ../tcpip/spi_eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/spi_eeprom.d ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/spi_flash.p1: ../tcpip/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_flash.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_flash.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/spi_flash.p1  ../tcpip/spi_flash.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/spi_flash.d ${OBJECTDIR}/_ext/2103848007/spi_flash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/spi_flash.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/spi_ram.p1: ../tcpip/spi_ram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_ram.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_ram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/spi_ram.p1  ../tcpip/spi_ram.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/spi_ram.d ${OBJECTDIR}/_ext/2103848007/spi_ram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/spi_ram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ssl.p1: ../tcpip/ssl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ssl.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ssl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ssl.p1  ../tcpip/ssl.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ssl.d ${OBJECTDIR}/_ext/2103848007/ssl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ssl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/stack_task.p1: ../tcpip/stack_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/stack_task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/stack_task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/stack_task.p1  ../tcpip/stack_task.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/stack_task.d ${OBJECTDIR}/_ext/2103848007/stack_task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/stack_task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/tcp.p1: ../tcpip/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tcp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tcp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/tcp.p1  ../tcpip/tcp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/tcp.d ${OBJECTDIR}/_ext/2103848007/tcp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/tcp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1: ../tcpip/tcp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1  ../tcpip/tcp_performance_test.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.d ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/telnet.p1: ../tcpip/telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/telnet.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/telnet.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/telnet.p1  ../tcpip/telnet.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/telnet.d ${OBJECTDIR}/_ext/2103848007/telnet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/telnet.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/tftp.p1: ../tcpip/tftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tftp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tftp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/tftp.p1  ../tcpip/tftp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/tftp.d ${OBJECTDIR}/_ext/2103848007/tftp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/tftp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/tick.p1: ../tcpip/tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tick.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tick.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/tick.p1  ../tcpip/tick.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/tick.d ${OBJECTDIR}/_ext/2103848007/tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/tick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/uart.p1: ../tcpip/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/uart.p1  ../tcpip/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/uart.d ${OBJECTDIR}/_ext/2103848007/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1: ../tcpip/uart_to_tcp_bridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1  ../tcpip/uart_to_tcp_bridge.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.d ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/udp.p1: ../tcpip/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/udp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/udp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/udp.p1  ../tcpip/udp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/udp.d ${OBJECTDIR}/_ext/2103848007/udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1: ../tcpip/udp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1  ../tcpip/udp_performance_test.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/udp_performance_test.d ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1: ../tcpip/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1  ../tcpip/zero_conf_helper.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.d ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1: ../tcpip/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1  ../tcpip/zero_conf_link_local.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.d ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1: ../tcpip/zero_conf_link_multicast_dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1  ../tcpip/zero_conf_link_multicast_dns.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.d ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LCDDelay.p1: LCDDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/LCDDelay.p1.d 
	@${RM} ${OBJECTDIR}/LCDDelay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/LCDDelay.p1  LCDDelay.c 
	@-${MV} ${OBJECTDIR}/LCDDelay.d ${OBJECTDIR}/LCDDelay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LCDDelay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LCD.p1: LCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/LCD.p1.d 
	@${RM} ${OBJECTDIR}/LCD.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/LCD.p1  LCD.c 
	@-${MV} ${OBJECTDIR}/LCD.d ${OBJECTDIR}/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Persistence.p1: Persistence.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Persistence.p1.d 
	@${RM} ${OBJECTDIR}/Persistence.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/Persistence.p1  Persistence.c 
	@-${MV} ${OBJECTDIR}/Persistence.d ${OBJECTDIR}/Persistence.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Persistence.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Device.p1: Device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Device.p1.d 
	@${RM} ${OBJECTDIR}/Device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/Device.p1  Device.c 
	@-${MV} ${OBJECTDIR}/Device.d ${OBJECTDIR}/Device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/IR.p1: IR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/IR.p1.d 
	@${RM} ${OBJECTDIR}/IR.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/IR.p1  IR.c 
	@-${MV} ${OBJECTDIR}/IR.d ${OBJECTDIR}/IR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/IR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/SLCD/readaddr.p1: SLCD/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/readaddr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/readaddr.p1  SLCD/readaddr.c 
	@-${MV} ${OBJECTDIR}/SLCD/readaddr.d ${OBJECTDIR}/SLCD/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/readdata.p1: SLCD/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/readdata.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/readdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/readdata.p1  SLCD/readdata.c 
	@-${MV} ${OBJECTDIR}/SLCD/readdata.d ${OBJECTDIR}/SLCD/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/setcgram.p1: SLCD/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/setcgram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/setcgram.p1  SLCD/setcgram.c 
	@-${MV} ${OBJECTDIR}/SLCD/setcgram.d ${OBJECTDIR}/SLCD/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/setddram.p1: SLCD/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/setddram.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/setddram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/setddram.p1  SLCD/setddram.c 
	@-${MV} ${OBJECTDIR}/SLCD/setddram.d ${OBJECTDIR}/SLCD/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/writdata.p1: SLCD/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/writdata.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/writdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/writdata.p1  SLCD/writdata.c 
	@-${MV} ${OBJECTDIR}/SLCD/writdata.d ${OBJECTDIR}/SLCD/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/busyslcd.p1: SLCD/busyslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/busyslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/busyslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/busyslcd.p1  SLCD/busyslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/busyslcd.d ${OBJECTDIR}/SLCD/busyslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/busyslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/openslcd.p1: SLCD/openslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/openslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/openslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/openslcd.p1  SLCD/openslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/openslcd.d ${OBJECTDIR}/SLCD/openslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/openslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/putsslcd.p1: SLCD/putsslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/putsslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/putsslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/putsslcd.p1  SLCD/putsslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/putsslcd.d ${OBJECTDIR}/SLCD/putsslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/putsslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/wcmdslcd.p1: SLCD/wcmdslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/wcmdslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/wcmdslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/wcmdslcd.p1  SLCD/wcmdslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/wcmdslcd.d ${OBJECTDIR}/SLCD/wcmdslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/wcmdslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SLCD/putrslcd.p1: SLCD/putrslcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/SLCD 
	@${RM} ${OBJECTDIR}/SLCD/putrslcd.p1.d 
	@${RM} ${OBJECTDIR}/SLCD/putrslcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/SLCD/putrslcd.p1  SLCD/putrslcd.c 
	@-${MV} ${OBJECTDIR}/SLCD/putrslcd.d ${OBJECTDIR}/SLCD/putrslcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SLCD/putrslcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ETH97J60.p1: ../tcpip/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ETH97J60.p1  ../tcpip/ETH97J60.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ETH97J60.d ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ETH97J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/announce.p1: ../tcpip/announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/announce.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/announce.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/announce.p1  ../tcpip/announce.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/announce.d ${OBJECTDIR}/_ext/2103848007/announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/announce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/arc4.p1: ../tcpip/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/arc4.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/arc4.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/arc4.p1  ../tcpip/arc4.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/arc4.d ${OBJECTDIR}/_ext/2103848007/arc4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/arc4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/arp.p1: ../tcpip/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/arp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/arp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/arp.p1  ../tcpip/arp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/arp.d ${OBJECTDIR}/_ext/2103848007/arp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/arp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/auto_ip.p1: ../tcpip/auto_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/auto_ip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/auto_ip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/auto_ip.p1  ../tcpip/auto_ip.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/auto_ip.d ${OBJECTDIR}/_ext/2103848007/auto_ip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/auto_ip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/berkeley_api.p1: ../tcpip/berkeley_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/berkeley_api.p1  ../tcpip/berkeley_api.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/berkeley_api.d ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/berkeley_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/big_int.p1: ../tcpip/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/big_int.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/big_int.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/big_int.p1  ../tcpip/big_int.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/big_int.d ${OBJECTDIR}/_ext/2103848007/big_int.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/big_int.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ddns.p1: ../tcpip/ddns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ddns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ddns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ddns.p1  ../tcpip/ddns.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ddns.d ${OBJECTDIR}/_ext/2103848007/ddns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ddns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/delay.p1: ../tcpip/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/delay.p1  ../tcpip/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/delay.d ${OBJECTDIR}/_ext/2103848007/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/dhcp_client.p1: ../tcpip/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/dhcp_client.p1  ../tcpip/dhcp_client.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/dhcp_client.d ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/dhcp_client.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/dhcp_server.p1: ../tcpip/dhcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/dhcp_server.p1  ../tcpip/dhcp_server.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/dhcp_server.d ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/dhcp_server.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/dns_client.p1: ../tcpip/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dns_client.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dns_client.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/dns_client.p1  ../tcpip/dns_client.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/dns_client.d ${OBJECTDIR}/_ext/2103848007/dns_client.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/dns_client.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/dns_server.p1: ../tcpip/dns_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dns_server.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/dns_server.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/dns_server.p1  ../tcpip/dns_server.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/dns_server.d ${OBJECTDIR}/_ext/2103848007/dns_server.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/dns_server.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/file_system.p1: ../tcpip/file_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/file_system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/file_system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/file_system.p1  ../tcpip/file_system.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/file_system.d ${OBJECTDIR}/_ext/2103848007/file_system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/file_system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ftp.p1: ../tcpip/ftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ftp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ftp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ftp.p1  ../tcpip/ftp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ftp.d ${OBJECTDIR}/_ext/2103848007/ftp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ftp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/hashes.p1: ../tcpip/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/hashes.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/hashes.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/hashes.p1  ../tcpip/hashes.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/hashes.d ${OBJECTDIR}/_ext/2103848007/hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/hashes.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/helpers.p1: ../tcpip/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/helpers.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/helpers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/helpers.p1  ../tcpip/helpers.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/helpers.d ${OBJECTDIR}/_ext/2103848007/helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/helpers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/http2.p1: ../tcpip/http2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/http2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/http2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/http2.p1  ../tcpip/http2.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/http2.d ${OBJECTDIR}/_ext/2103848007/http2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/http2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/icmp.p1: ../tcpip/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/icmp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/icmp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/icmp.p1  ../tcpip/icmp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/icmp.d ${OBJECTDIR}/_ext/2103848007/icmp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/icmp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ip.p1: ../tcpip/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ip.p1  ../tcpip/ip.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ip.d ${OBJECTDIR}/_ext/2103848007/ip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1: ../tcpip/lcd_blocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1  ../tcpip/lcd_blocking.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/lcd_blocking.d ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/lcd_blocking.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/mpfs2.p1: ../tcpip/mpfs2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/mpfs2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/mpfs2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/mpfs2.p1  ../tcpip/mpfs2.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/mpfs2.d ${OBJECTDIR}/_ext/2103848007/mpfs2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/mpfs2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/nbns.p1: ../tcpip/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/nbns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/nbns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/nbns.p1  ../tcpip/nbns.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/nbns.d ${OBJECTDIR}/_ext/2103848007/nbns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/nbns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/random.p1: ../tcpip/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/random.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/random.p1  ../tcpip/random.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/random.d ${OBJECTDIR}/_ext/2103848007/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/reboot.p1: ../tcpip/reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/reboot.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/reboot.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/reboot.p1  ../tcpip/reboot.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/reboot.d ${OBJECTDIR}/_ext/2103848007/reboot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/reboot.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/rsa.p1: ../tcpip/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/rsa.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/rsa.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/rsa.p1  ../tcpip/rsa.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/rsa.d ${OBJECTDIR}/_ext/2103848007/rsa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/rsa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/smtp.p1: ../tcpip/smtp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/smtp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/smtp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/smtp.p1  ../tcpip/smtp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/smtp.d ${OBJECTDIR}/_ext/2103848007/smtp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/smtp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/sntp.p1: ../tcpip/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/sntp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/sntp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/sntp.p1  ../tcpip/sntp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/sntp.d ${OBJECTDIR}/_ext/2103848007/sntp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/sntp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1: ../tcpip/spi_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1  ../tcpip/spi_eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/spi_eeprom.d ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/spi_eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/spi_flash.p1: ../tcpip/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_flash.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_flash.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/spi_flash.p1  ../tcpip/spi_flash.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/spi_flash.d ${OBJECTDIR}/_ext/2103848007/spi_flash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/spi_flash.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/spi_ram.p1: ../tcpip/spi_ram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_ram.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/spi_ram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/spi_ram.p1  ../tcpip/spi_ram.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/spi_ram.d ${OBJECTDIR}/_ext/2103848007/spi_ram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/spi_ram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/ssl.p1: ../tcpip/ssl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ssl.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/ssl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/ssl.p1  ../tcpip/ssl.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/ssl.d ${OBJECTDIR}/_ext/2103848007/ssl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/ssl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/stack_task.p1: ../tcpip/stack_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/stack_task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/stack_task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/stack_task.p1  ../tcpip/stack_task.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/stack_task.d ${OBJECTDIR}/_ext/2103848007/stack_task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/stack_task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/tcp.p1: ../tcpip/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tcp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tcp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/tcp.p1  ../tcpip/tcp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/tcp.d ${OBJECTDIR}/_ext/2103848007/tcp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/tcp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1: ../tcpip/tcp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1  ../tcpip/tcp_performance_test.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.d ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/tcp_performance_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/telnet.p1: ../tcpip/telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/telnet.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/telnet.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/telnet.p1  ../tcpip/telnet.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/telnet.d ${OBJECTDIR}/_ext/2103848007/telnet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/telnet.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/tftp.p1: ../tcpip/tftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tftp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tftp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/tftp.p1  ../tcpip/tftp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/tftp.d ${OBJECTDIR}/_ext/2103848007/tftp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/tftp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/tick.p1: ../tcpip/tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tick.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/tick.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/tick.p1  ../tcpip/tick.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/tick.d ${OBJECTDIR}/_ext/2103848007/tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/tick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/uart.p1: ../tcpip/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/uart.p1  ../tcpip/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/uart.d ${OBJECTDIR}/_ext/2103848007/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1: ../tcpip/uart_to_tcp_bridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1  ../tcpip/uart_to_tcp_bridge.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.d ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/uart_to_tcp_bridge.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/udp.p1: ../tcpip/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/udp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/udp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/udp.p1  ../tcpip/udp.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/udp.d ${OBJECTDIR}/_ext/2103848007/udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1: ../tcpip/udp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1  ../tcpip/udp_performance_test.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/udp_performance_test.d ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/udp_performance_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1: ../tcpip/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1  ../tcpip/zero_conf_helper.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.d ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/zero_conf_helper.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1: ../tcpip/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1  ../tcpip/zero_conf_link_local.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.d ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_local.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1: ../tcpip/zero_conf_link_multicast_dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2103848007 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1  ../tcpip/zero_conf_link_multicast_dns.c 
	@-${MV} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.d ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2103848007/zero_conf_link_multicast_dns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LCDDelay.p1: LCDDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/LCDDelay.p1.d 
	@${RM} ${OBJECTDIR}/LCDDelay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/LCDDelay.p1  LCDDelay.c 
	@-${MV} ${OBJECTDIR}/LCDDelay.d ${OBJECTDIR}/LCDDelay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LCDDelay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LCD.p1: LCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/LCD.p1.d 
	@${RM} ${OBJECTDIR}/LCD.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/LCD.p1  LCD.c 
	@-${MV} ${OBJECTDIR}/LCD.d ${OBJECTDIR}/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Persistence.p1: Persistence.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Persistence.p1.d 
	@${RM} ${OBJECTDIR}/Persistence.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/Persistence.p1  Persistence.c 
	@-${MV} ${OBJECTDIR}/Persistence.d ${OBJECTDIR}/Persistence.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Persistence.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Device.p1: Device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Device.p1.d 
	@${RM} ${OBJECTDIR}/Device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/Device.p1  Device.c 
	@-${MV} ${OBJECTDIR}/Device.d ${OBJECTDIR}/Device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/IR.p1: IR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/IR.p1.d 
	@${RM} ${OBJECTDIR}/IR.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/IR.p1  IR.c 
	@-${MV} ${OBJECTDIR}/IR.d ${OBJECTDIR}/IR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/IR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        -odist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../tcpip" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -odist/${CND_CONF}/${IMAGE_TYPE}/DACVolume.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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
