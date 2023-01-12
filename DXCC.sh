# worked all countries
# show the list and count of confirmed country contacts
# need 100 for DXCC

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <lotw-report>"
	exit 1
fi
IFILE=$1

TMP=`mktemp`
./contacted-stations.sh  $IFILE| jq .country | sort -u > $TMP
cat $TMP
cat $TMP | wc -l 
rm $TMP
