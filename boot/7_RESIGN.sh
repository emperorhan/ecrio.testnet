ECRIO_PRODUCER_KEY="$( jq -r '.ECRIO_PUB_KEY' "../.conf" )"
SYSTEM_ACCOUNTS=($( jq -r '.SYSTEM_ACCOUNTS' "00_CONFIG.conf" ))


account="ecrio"
controller="ecrio.prods"

./cleos.sh push action ecrio updateauth '{"account": "'$account'", "permission": "owner",  "parent": "",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } } ' -p $account@owner
./cleos.sh push action ecrio updateauth '{"account": "'$account'", "permission": "active",  "parent": "owner",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } }' -p $account@active


for sa in "${SYSTEM_ACCOUNTS[@]}"
do
    account="$sa"
    controller="ecrio"
    ./cleos.sh push action ecrio updateauth '{"account": "'$account'", "permission": "owner",  "parent": "",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } } ' -p $account@owner
    ./cleos.sh push action ecrio updateauth '{"account": "'$account'", "permission": "active",  "parent": "owner",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } }' -p $account@active
done
