#!/bin/bash
chmod +x Filesdeleter.sh
./Filesdeleter.sh Тенигин test1.txt
touch test1.txt
echo "Тенигин Альберт Андреевич"> test1.txt
if [[ ! -f test1.txt ]]; then
	echo "Тест 1 прошёл успешно"
fi
touch test2.txt
echo "Шабрашин Иван Геннадьевич"> test2.txt
./Filesdeleter.sh Тенигин test2.txt
if [[ -f test2.txt ]]; then
	echo "Тест 2 прошёл успешно"
fi
touch Тенигин.txt
./Filesdeleter.sh Тенигин Тенигин.txt
if [[ ! -f Тенигин.txt ]]; then
	echo "Тест 3 прошёл успешно"
fi
