ACCOUNT_NAME="$( jq -r '.ACCOUNT_77' "00_CONFIG.conf" )"
PUB_KEY="$( jq -r '.PUB_KEY_77' "00_CONFIG.conf" )"
PRIV_KEY="$( jq -r '.PRIV_KEY_77' "00_CONFIG.conf" )"
TOKEN_AMOUNT="\"1000000000.0000 INY\""

./cleos.sh system newaccount --stake-net "0.1000 CR" --stake-cpu "0.1000 CR" --buy-ram "0.1000 CR" ecrio $ACCOUNT_NAME $PUB_KEY $PUB_KEY -p ecrio

./cleos.sh transfer ecrio $ACCOUNT_NAME "100000000.0000 CR" "init" -p ecrio

./cleos.sh system delegatebw $ACCOUNT_NAME $ACCOUNT_NAME "1000.0000 CR" "1000.0000 CR" -p $ACCOUNT_NAME

./cleos.sh system buyram $ACCOUNT_NAME $ACCOUNT_NAME "1000.0000 CR" -p $ACCOUNT_NAME

./cleos.sh set contract $ACCOUNT_NAME /home/CR/ecrio/build/contracts/ecrio.token

./cleos.sh push action $ACCOUNT_NAME create "[$ACCOUNT_NAME,$TOKEN_AMOUNT]" -p $ACCOUNT_NAME

./cleos.sh push action $ACCOUNT_NAME issue "[$ACCOUNT_NAME,$TOKEN_AMOUNT,issue DAPP token]" -p $ACCOUNT_NAME

./cleos.sh system regproducer $ACCOUNT_NAME $PUB_KEY "2.0000 INY" https://ibct.io/ -p $ACCOUNT_NAME

./cleos.sh system burnandearn ibctemperor1 "1000.0000 CR" $ACCOUNT_NAME

./cleos.sh system listproducers
