#!/usr/bin/env bash

rm time_external_system.dat
touch time_external_system.dat

echo 1M File >> time_external_system.dat
{ time nc 10.0.10.20 12345 < file_1M.dat ; } 2>> time_external_system.dat

echo 10M File >> time_external_system.dat
{ time nc 10.0.10.20 12345 < file_10M.dat ; } 2>> time_external_system.dat

echo 100M File >> time_external_system.dat
{ time nc 10.0.10.20 12345 < file_100M.dat ; } 2>> time_external_system.dat