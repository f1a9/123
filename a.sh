#!/bin/bash
# a.sh
A=B
echo "PID for a.sh before exec/source/fork: $$"

export A


echo "in a.sh, \$A = $A"

case $1 in
    exec)
        echo 'using exec ...'
        exec ./b.sh ;;
    source)
        echo 'using source ...'
        source ./b.sh ;;
    dot)
        echo 'using dot...'
        . ./b.sh ;;
    *)
        echo 'using fork by default ...'
        ./b.sh ;;
esac

echo "PID of a.sh afterwards : $$"
echo "a.sh: \$A = $A"