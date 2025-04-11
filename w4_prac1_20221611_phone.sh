if [ $# -eq 0 ]; 
then
	echo "Usage: phone searchfor [...searchfor]"
	echo "(You didn't tell me what you want to search for.)"
	exit 1
fi
list=$1
for arg in "$@"
do
	list="${list}|${arg}"
done
egrep -i "$list" mydata.txt > tmp
awk -f display.awk tmp
