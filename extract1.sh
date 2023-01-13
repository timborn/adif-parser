# extract1 - given an ADIF pull out JSON records of callsign, band, freq and date
# TODO: given this, pull out state names to compose WAS
# TODO: HOW CAN I TELL WHICH ARE QSOs AND WHICH ARE QSLs?
# http://www.arrl.org/files/file/LoTW%20Instructions/LoTW%20User%20Account/Your%20QSOS.pdf
# "This report downloads an ADIF file of confirmed QSOs."
# THEREFORE if you download the report from LoTW you get only QSLs
# TODO: fix hard-coded logbook

DEMO="$HOME/code/ham/adif-parser/adif-json-protobuf/demo/demo.py"
python3 $DEMO demo.py ~/Downloads/lotw.adi 2>/dev/null | jq -c '.qsos[] | { contactedStation: .contactedStation.stationCall, band: .band, freq: .freq, mode: .mode, dateTime: .timeOn  } '
