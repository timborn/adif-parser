# sorted list of contacted station callsigns from a given ADIF
# TODO: input ADIF is hard-coded
# NB the list of callsigns shows up enclosed in double quotes
python3 demo.py ~/Downloads/*adi 2>/dev/null | jq -c '.qsos[] |  .contactedStation.stationCall  ' | sort -u 
