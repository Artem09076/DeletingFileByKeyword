#!/bin/bash
chmod +x Filesdeleter.sh
touch test1.txt
echo "Тенигин Альберт Андреевич"> test1.txt
./Filesdeleter.sh Тенигин test1.txt
if [[ ! -f test1.txt ]]; then
	echo "---------Test 1 passed---------"
else
	exit 0
fi
touch test2.txt
echo "Шабрашин Иван Геннадьевич"> test2.txt
./Filesdeleter.sh Тенигин test2.txt
if [[ -f test2.txt ]]; then
	echo "---------Test 2 passed---------"
else
	exit 0
fi
touch Тенигин.txt
./Filesdeleter.sh Тенигин Тенигин.txt
if [[ ! -f Тенигин.txt ]]; then
	echo "---------Test 3 passed---------"
else
	exit 0
fi
