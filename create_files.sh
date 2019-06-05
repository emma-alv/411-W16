#!/usr/bin/env bash

dd if=/dev/zero of=file_1M.dat count=1024 bs=1024
dd if=/dev/zero of=file_10M.dat count=10240 bs=1024
dd if=/dev/zero of=file_100M.dat count=102400 bs=1024

