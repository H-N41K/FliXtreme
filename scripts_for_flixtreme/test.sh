tmpfile=`mktemp`
keygendate=$(date +"%s") 
keyrand1=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8`
keyrand2=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8`

keyname="${keyrand1}${keygendate}${keyrand2}"
echo $keyname
e1=$(echo "$keyname" | base64)

echo $e1

e2=$(echo "$e1" | base64)

echo $e2



