#!/usr/bin/env bash

find / -iname "*.so" \
       -user joaox  \
       -type f       \
       -size +1M     \
       -exec ls {}   \;
