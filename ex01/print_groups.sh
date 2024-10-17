#!/bin/bash
FT_USER="daemon"
groups $FT_USER | awk -F ': ' '{print $2}' | tr ' ' ','
