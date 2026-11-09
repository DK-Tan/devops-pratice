#!/bin/bash
FILE="hello.sh"

if [ -f "$FILE" ]; then
 echo "$FILE exists"
else
 echo "$FILE does not exist"
fi
