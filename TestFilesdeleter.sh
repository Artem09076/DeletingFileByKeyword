#!/bin/bash
`chmod +x Filesdeleter.sh`
`./Filesdeleter.sh Тенигин test1.txt`
if [[ ! -f test1.txt ]]; then
	echo "Тест 1 прошёл успешно"
fi

`./Filesdeleter.sh Тенигин test2.txt`
if [[ -f test2.txt ]]; then
	echo "Тест 2 прошёл успешно"
fi
`./Filesdeleter.sh Тенигин Тенигин.txt`
if [[ ! -f Тенигин.txt ]]; then
	echo "Тест 3 прошёл успешно"
fi
