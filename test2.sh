chmod +x Filesdeleter.sh
./Filesdeleter.sh Тенигин test2.txt
if [[ -f test2.txt ]]; then
	exit 1
fi

