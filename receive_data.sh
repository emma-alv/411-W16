#!/usr/bin/env bash

echo Waiting for Data...

nc -l -p 12345 > file_1M.dat
echo Data 1M received

nc -l -p 12345 > file_10M.dat
echo Data 10M received

nc -l -p 12345 > file_100M.dat
echo Data 100M received

echo Data transfer complete
