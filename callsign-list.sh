# sorted list of contacted station callsigns from a given ADIF
# NB the list of callsigns shows up enclosed in double quotes
DEMO=/Volumes/BlueMountain/Users/timborn/code/ham/adif-parser/adif-json-protobuf/demo/demo.py
python3 $DEMO ~/Downloads/lotwreport.adi 2>/dev/null | jq -c '.qsos[] |  .contactedStation.stationCall  ' | sort -u 
