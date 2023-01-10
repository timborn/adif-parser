# given a callsign return JSON with details
# NB json is quoted key, colon, quoted string value.  dunno about numbers
# TODO: implement caching
# TODO: write a test case for basic sanity checking

TMPFILE=`mktemp`
CALLSIGN=$1

if [ $# -ne 1 ] ; then 
	echo "Usage: $0 <callsign>"
	exit 1
fi

# start by pounding the DB once, rather than repeatedly
# TODO: is there a better way to cache this file other than the FS?
wget -q "http://www.wm7d.net/perl/ulsquery.pl?detailed=on&callsign=$CALLSIGN&limit=1" -O $TMPFILE

# # bash regex wizardry to extract callsign
# s=`grep  callsign_data $TMPFILE | head -1 `
# s=${s#*'"'} 
# CALLSIGN=${s%'"'*}

CLASS=`grep Class $TMPFILE | cut -f 2  -d' '`

# var addr_data = "6816 W PERSHING AVE, PEORIA, AZ, 85381";
s=`grep addr_data $TMPFILE | head -1 `
s=${s#*'"'} 
s=${s%'"'*}  # now we have the stuff in quotes
STATE=`echo $s | cut -d, -f3 `	# ends up with an extra leading space
STATE=`echo $STATE`		# ... and the echo makes it disappear

# super stupidly fragile parsing of web page respose
GRID=`grep  Grid $TMPFILE | cut -f 3  -d' '`

echo "{ \"callsign\": \"$CALLSIGN\", \"class\": \"$CLASS\", \"state\": \"$STATE\", \"grid\": \"$GRID\" }"

# # No joy in Mudville
# FOO=`wget 'http://www.wm7d.net/perl/ulsquery.pl?detailed=on&callsign=N7TDB&limit=1 -O -'`
# # did I get the whole file in a string?
# echo FOO:::::
# echo $FOO

### Cleanup
rm $TMPFILE 2>/dev/null || true
