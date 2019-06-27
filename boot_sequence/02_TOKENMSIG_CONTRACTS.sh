SOURCES_FOLDER="$( jq -r '.SOURCES_FOLDER' "00_CONFIG.conf" )"
CONTRACTS_FOLDER="$SOURCES_FOLDER/build/"


./cleos.sh set contract ecrio.token $CONTRACTS_FOLDER/ecrio.token -p ecrio.token
./cleos.sh set contract ecrio.msig $CONTRACTS_FOLDER/ecrio.msig -p ecrio.msig



