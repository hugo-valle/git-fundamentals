#!/bin/bash  
#===============================================================================
#         USAGE: ./task4-3.sh 
# 
#   DESCRIPTION: 
# 
#        AUTHOR: HUGO VALLE, hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/13/2016 17:32
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

ts=".BACKUP--"`date +'%Y-%m-%d_%H:%M'`
bkFolder="bk"

# Select only .sh files
#for script in $(ls *.sh)
for script in *.sh
do
	newScript=$script$ts
	echo "Copy $script to $newScript"
	cp $script $bkFolder/$newScript # make the actual copy
done


exit 0

