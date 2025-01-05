#!/bin/bash

<<Description
  This Script will Monitor the resource utilization of  this Virtual Machine and Create a report
Description

Report=SystemInfo.txt

RAM_INFO=$(free -h)
echo ""  > $Report
echo "Memory_Info"  >> $Report
echo "" >> $Report
echo  "$RAM_INFO" >> $Report
echo  ""  >> $Report


Storage_info=$(df -h)
echo "Storage_Info"  >> $Report
echo "" >> $Report
echo "$Storage_info" >> $Report
echo "" >> $Report

CPU_info=$(lscpu)
echo "CPU_Info"  >> $Report
echo "" >> $Report
echo "$CPU_info" >> $Report
echo "" >> $Report

Process_info=$(ps aux --sort=-%mem | awk 'NR<=6{print $2, $3}')
echo "TOP 5 PROCESS RUNNING"  >> $Report
echo "" >> $Report
echo "$Process_info" >> $Report
echo "" >> $Report

cat  $Report
