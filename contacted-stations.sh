# given an ADIF, list of contacted stations in JSON format
# Start with report from LoTW at https://lotw.arrl.org/lotwuser/qsos?qsoscmd=adif
# make sure you check the box for 'Include QSL details'.
# NB depends on adif-json-protobuf (github)

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <contact.adi>"
	exit 1
fi
IFILE=$1

python3 ../adif-json-protobuf/demo/demo.py $IFILE 2>/dev/null | 
	jq -c '.qsos[] | { 
		contactedStation: .contactedStation.stationCall,
		country: .contactedStation.country,
		dxcc:    .contactedStation.dxcc,
		cqZone:  .contactedStation.cqZone,
		ituZone: .contactedStation.ituZone,
		grid:    .contactedStation.gridSquare,
		county:  .contactedStation.county,
		band:    .band,
		freq:    .freq,
		mode:    .mode,
		dateTime: .timeOn
		} '
