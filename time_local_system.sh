#!/usr/bin/env bash

rm time_local_system.dat
touch time_local_system.dat

echo 1M File >> time_local_system.dat
{ time cp file_1M.dat /Volumes/Erodriguez/ts_project/ ; } 2>> time_local_system.dat

echo 10M File >> time_local_system.dat
{ time cp file_10M.dat /Volumes/Erodriguez/ts_project/ ; } 2>> time_local_system.dat

echo 100M File >> time_local_system.dat
{ time cp file_100M.dat /Volumes/Erodriguez/ts_project/ ; } 2>> time_local_system.dat