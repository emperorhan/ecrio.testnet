CONTRACTS_FOLDER="$( jq -r '.CONTRACTDIR' "../.conf")"

./cleos.sh set contract ecrio $CONTRACTS_FOLDER/ecrio.system -p ecrio
./cleos.sh push action ecrio setpriv '["ecrio.msig",1]' -p ecrio
./cleos.sh push action ecrio init '[0, "4,CR"]' -p ecrio
sleep 2s