#!/bin/bash
inputLocation=$1
if [ !-z $inputLocation ] ; then

    inputLocation='urls.txt'
fi
outputLocation=$2
if [ !-z $outputLocation ] ; then
    outputLocation='output.csv'
    fi
{
    rm "$outputLocation"
}
get_status(){
    curl -O -J -L /dev/null --silent --head --write-out "%{http_code},$1\n" "$1" | tail -1 >> $outputLocation
    echo "Checking $1"
}
while read LINE; do
    while read CONFIG; do
        if [[ $LINE =~ ^https?:// ]] ; then
            get_status "$LINE$CONFIG"
        else
            get_status "http://$LINE$CONFIG"
            get_status "https://$LINE$CONFIG"
        fi
    done < config.txt
done < "$inputLocation"
