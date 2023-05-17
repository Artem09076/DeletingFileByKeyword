chmod +x Filesdeleter.sh
./Filesdeleter.sh Тенигин test1.txt
if [[ -f test1.txt ]]; then
	exit 1
fi
