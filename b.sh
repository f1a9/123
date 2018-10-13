#!/bin/bash
# b.sh
echo "PID for b.sh: $$"
echo "b.sh get \$A=$A from a.sh"
A=C
export A
echo "in b.sh, \$A=$A "