#!/bin/bash

suffix=`date +%Y-%m`
country_file="dbip-country-lite-${suffix}.mmdb.gz"
asn_file="dbip-asn-lite-${suffix}.mmdb.gz"

echo "$country_file ..."
wget -qO dbip-country-lite.mmdb.gz https://download.db-ip.com/free/$country_file
gzip -d dbip-country-lite.mmdb.gz

echo "$asn_file ..."
wget -qO dbip-asn-lite.mmdb.gz https://download.db-ip.com/free/$asn_file
gzip -d dbip-asn-lite.mmdb.gz
