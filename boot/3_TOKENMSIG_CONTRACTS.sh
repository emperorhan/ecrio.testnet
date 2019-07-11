CONTRACTS_FOLDER="$( jq -r '.CONTRACTDIR' "../.conf")"

./cleos.sh set contract ecrio.token $CONTRACTS_FOLDER/ecrio.token -p ecrio.token
./cleos.sh set contract ecrio.msig $CONTRACTS_FOLDER/ecrio.msig -p ecrio.msig