# given an ADIF, list of contacted stations in JSON format
# TODO: the input ADIF is hard-coded
## YES ## python3 demo.py ~/Downloads/*adi 2>/dev/null | jq -c '.qsos[] | { contactedStation: .contactedStation.stationCall } '
