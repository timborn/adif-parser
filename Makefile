test:
	# ./contacted-stations.sh  ~/Downloads/lotwreport.adi
	# assuming you have downloaded the extended report from LoTW
	# fine out which state is still a holdout for WAS
	./confirmed-states.sh ~/Downloads/lotwreport.adi > ListOfConfirmedStates
	./whats-missing.sh ListOfConfirmedStates
