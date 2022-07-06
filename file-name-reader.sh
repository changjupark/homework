#!/bin/bash

dir_name="$1"
ls "$dir_name" | tee names.txt
