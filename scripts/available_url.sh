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
while read LINE; do
    while read CONFIG; do
        if [[ $LINE =~ ^https?:// ]] ; then 
            curl -o /dev/null --silent --head --write-out "%{http_code},$LINE/$CONFIG\n" "$LINE/$CONFIG" >> $outputLocation
        else
            curl -o /dev/null --silent --head --write-out "%{http_code},http://$LINE/$CONFIG\n" "http://$LINE/$CONFIG" >> $outputLocation
            curl -o /dev/null --silent --head --write-out "%{http_code},https://$LINE/$CONFIG\n" "https://$LINE/$CONFIG" >> $outputLocation
        fi
        echo "Checking $LINE/$CONFIG"
    done < config.txt
done < "$inputLocation"