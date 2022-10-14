#./bin/bash

if [ $2 = '+' ]; then
	result=$(($1 + $3))
	echo $result

elif [ $2 = '*' ]; then
	result=$(($1 * $3))
	echo $result

elif [ $2 = '/' ]; then
	result=$(($1 / $3))
	echo $result

elif [ $2 = '-' ]; then
	result=$(($1 - $3))
	echo $result
fi
