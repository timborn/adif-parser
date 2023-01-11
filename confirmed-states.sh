# find the list of all confirmed states
# ./contacted-stations.sh ~/Downloads/lotwreport.adi  | egrep 'AMERICA|HAWAII|ALASKA' | jq .county | cut -f2 -d\" | cut -f1 -d, | sort -u |grep -v null 

if [ $# -ne 1 ] ; then
	echo "Usage: $0: <lotw-report>"
	exit 1
fi
FILE=$1

./contacted-stations.sh $FILE  | egrep 'AMERICA|HAWAII|ALASKA' | jq .county | cut -f2 -d\" | cut -f1 -d, | sort -u |grep -v null 
