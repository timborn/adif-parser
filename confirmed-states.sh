# find the list of all confirmed states
./contacted-stations.sh ~/Downloads/lotwreport.adi  | egrep 'AMERICA|HAWAII|ALASKA' | jq .county | cut -f2 -d\" | cut -f1 -d, | sort -u |grep -v null 
