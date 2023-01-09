# given an ADIF, list of contacted stations in JSON format
# TODO: the input ADIF is hard-coded
# NB depends on adif-json-protobuf (github)

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <contact.adi>"
	exit 1
fi
IFILE=$1

python3 ../adif-json-protobuf/demo/demo.py $IFILE 2>/dev/null | 
	jq -c '.qsos[] | { 
		contactedStation: .contactedStation.stationCall,
		band: .band,
		freq: .freq,
		mode: .mode,
		dateTime: .timeOn
		} '

