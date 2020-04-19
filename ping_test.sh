for i in `seq 1 255`
do
	ping -c 1 -W 1 $1.$i
	if [ $? -eq 0 ];
	then
		echo "$1.$i" >> success.list
	fi
done
