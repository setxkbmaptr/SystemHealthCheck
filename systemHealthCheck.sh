#!/bin/bash
##----------------------------------
##------------System Check----------
##----------------------------------
##NOTE##You need to install (sudo apt install speedtest-cli) for the speed test.
##Totally Safe**
RED='\033[0;31m'
CYAN='\033[0;36m'
ORANGE='\033[0;33m'
NC='\033[0m'

echo -e "        ${ORANGE}Welcome to System Check${NC}"
echo -e "${ORANGE}Date${NC}"
	date
echo -e "${ORANGE}UserInfo${NC}"
	hostname
echo -e "${ORANGE}Please Select the Option From below:\n${NC}"

echo -e "${ORANGE}
[1] Check Disk Usage 
[2] Check Ram Utilization
[3] Check Average Cpu Utilization
[4] Check System Tepmerature
[5] Check Download/Upload Speed 
[6] Check Total Available Memory
[7] Check ALL \n${NC}"

read userInput

    if [ $userInput == 1 ]; then
	echo -e "${CYAN}*****Disk Usage*****${NC}"
	df -h
	df -h > log.txt
	elif [ $userInput == 2 ]; then
	   echo -e "${CYAN}*****Ram Utilization*****${NC}"
		free -h
		free -h > log.txt
	elif [ $userInput == 3 ]; then
	   echo -e "${CYAN}*****Five values at second intervals*****${NC}"
		mpstat 1 5
		mpstat 1 5 > log.txt
	elif [ $userInput == 4 ]; then
	   echo -e "${CYAN}*****System Temperature*****${NC}"
		sensors
		sensors > log.txt
	elif [ $userInput == 5 ]; then
	   echo -e "${CYAN}Download/Upload Speed${NC}"
		speedtest-cli
		speedtest-cli > log.txt
	elif [ $userInput == 6 ]; then
	   echo -e "${CYAN}*****Total Available Memory*****${NC}"
	   grep MemTotal /proc/meminfo
	   grep MemTotal /proc/meminfo >log.txt
	elif [ $userInput == 7 ]; then
	   echo -e "${CYAN}*****Disk Usage*****${NC}"
		df -h
		df -h > log.txt
	   echo -e "${CYAN}*****Ram Utilization*****${NC}"
		free -h
		free -h >> log.txt
	   echo -e "${CYAN}*****Average Cpu Utilization*****${NC}"
		mpstat 1 5
		mpstat 1 5 >> log.txt
	   echo -e "${CYAN}*****System Temperature*****${NC}"
		sensors
		sensors >> log.txt
	   echo -e "${CYAN}*****Download/Upload Speed*****${NC}"
		speedtest-cli
		speedtest-cli >> log.txt
	   echo -e "${CYAN}*****Total Available Memory*****${NC}"
		grep MemTotal /proc/meminfo
		grep MemTotal /proc/meminfo >> log.txt
			else 	
			   echo -e "${RED}*****UNKNOWN OPTION GOODBYE*****${NC}"
				
fi
