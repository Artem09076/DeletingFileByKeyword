#!/bin/bash
`chmod +x Filesdeleter.sh`
`./Filesdeleter.sh Тенигин test1.txt`
if [[ ! -f test1.txt ]]; then
	exit 1
fi

`./Filesdeleter.sh Тенигин test2.txt`
if [[ -f test2.txt ]]; then
	exit 1
fi
`./Filesdeleter.sh Тенигин Тенигин.txt`
if [[ ! -f Тенигин.txt ]]; then
	exit 1
fi
