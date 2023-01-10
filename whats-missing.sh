# which states are missing?

if [ $# -ne 1 ] ; then 
	echo "Usage: $0 <list-of-confirmed-states>"
	exit 1
fi

grep -F -x -v -f $1 list-of-us-states 
