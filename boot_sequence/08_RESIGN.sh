ECRIO_PRODUCER_KEY="$( jq -r '.ECRIO_PRODUCER_PUB_KEY' "00_CONFIG.conf" )"
SYSTEM_ACCOUNT=($( jq -r '.SYSTEM_ACCOUNT' "00_CONFIG.conf" ))


account="ecrio"
controller="ecrio.prods"

./cleos.sh push action ecrio updateauth '{"account": "'$account'", "permission": "owner",  "parent": "",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } } ' -p $account@owner
./cleos.sh push action ecrio updateauth '{"account": "'$account'", "permission": "active",  "parent": "owner",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } }' -p $account@active


for sa in "${SYSTEM_ACCOUNT[@]}"
do
    account="$sa"
    controller="ecrio"
    ./cleos.sh push action ecrio updateauth '{"account": "'$account'", "permission": "owner",  "parent": "",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } } ' -p $account@owner
    ./cleos.sh push action ecrio updateauth '{"account": "'$account'", "permission": "active",  "parent": "owner",  "auth": { "threshold": 1, "keys": [], "waits": [], "accounts": [{ "weight": 1, "permission": {"actor": "'$controller'", "permission": "active"} }] } }' -p $account@active

done
