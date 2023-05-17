chmod +x Filesdeleter.sh
./Filesdeleter.sh Тенигин Тенигин.txt
if [[ ! -f Тенигин.txt ]]; then
	exit 1
fi
