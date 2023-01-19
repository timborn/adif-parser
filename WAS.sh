# WAS.sh - start with a report from LoTW
# The report shows CONFIRMED contacts in ADIF format.
# That's your input.  This will report: 
#    - which states are missing
#    - full report of all states/callsign/date/mode/band/freq as final evidence
# NB the report from LoTW does NOT show the grid of the called station
# so anyone working from someplace other than FCC home location is wacko.
# Seems like this info should be in the records.  Is there another report 
# from LoTW I can get?  Ah Ha! Check the box 'Include QSL details'.

### open the CONFIRMED contacts from LoTW
if [ $# -ne 1 ] ; then
	echo "USAGE: $0 <confirmed.adi>"
	exit 1
fi

IFILE=$1
TMP=`mktemp`  # was: ListOfConfirmedStates

./confirmed-states.sh $IFILE > $TMP
./whats-missing.sh $TMP

# clean up my mess
rm $TMP
