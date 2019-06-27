SOURCES_FOLDER="$( jq -r '.SOURCES_FOLDER' "00_CONFIG.conf" )"
CONTRACTS_FOLDER="$SOURCES_FOLDER/build/"

./cleos.sh set contract ecrio $CONTRACTS_FOLDER/ecrio.system -p ecrio
./cleos.sh push action ecrio setpriv '["ecrio.msig",1]' -p ecrio
./cleos.sh push action ecrio init '[0, "4,CR"]' -p ecrio
sleep 2s