#!/bin/bash
#i=2
while true
do
    tmpfile=`mktemp`
    keygendate=$(date +"%s") 
    keyrand1=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8`
    keyrand2=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8`
    
    keyrand3=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8`
    keyrand4=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8`

    keyname="${keyrand1}${keygendate}${keyrand2}"
    e1=$(echo "$keyname" | base64)
    e2=$(echo "$e1" | base64)
    openssl rand 16 > D:/xampp/htdocs/owncloud/data/admin/files/keys/$keygendate.key
    echo key://$e2 > $tmpfile
    echo D:/xampp/htdocs/owncloud/data/admin/files/keys/$keygendate.key >> $tmpfile
    echo `openssl rand -hex 16` >> $tmpfile
    mv $tmpfile D:/xampp/htdocs/owncloud/data/admin/files/keys/enc.keyinfo
    #let i++
    sleep 5
done