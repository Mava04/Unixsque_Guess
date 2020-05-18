nfile=$(ls -1 | wc -l)

echo  "Hi! Ready for you guessing game? Let's start: how many files are in current directory? Enter a number"
read resp

function evaluate {
	echo Too $1, try again and give me another number
	read resp
}
while [[ $resp -ne $nfile ]]
do
	while [[ $resp -lt $nfile ]]
	do
		evaluate low		
	done
	while [[ $resp -gt $nfile ]]
	do
		evaluate high
	done
done
if [[ $resp -eq $nfile ]]
then
       	echo "Great, it's $resp, you got it right. Congratulations :)"
fi
