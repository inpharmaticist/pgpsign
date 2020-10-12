#!/bin/bash

#The two lines below are the local and external addresses synced by a cloud service (currently formatted for Keybase on a linux machine).
local=../../keybase/public/inpharmaticist/Signatures
interweb=https://inpharmaticist.keybase.pub/Signatures


#Script
cd $local
echo "What message would you like to sign?
"
read userentry

datetime=`date +"%m%d%Y%H%M%S"`
echo "$userentry"|gpg --clearsign > $datetime.txt

echo "
Here is your message:
-----------------------------
$userentry
$interweb/$datetime.txt
-----------------------------
Press Enter when done"
read userentry
