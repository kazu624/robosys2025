#!/bin/bash

ACTUAL_OUTPUT=$(echo "TEST" | ./ascii)
if echo "!" | ./ascii 2> /dev/null; then
