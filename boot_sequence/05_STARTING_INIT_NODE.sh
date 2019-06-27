INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "00_CONFIG.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "00_CONFIG.conf" )"
INIT_URL="$( jq -r '.INIT_URL' "00_CONFIG.conf" )"
INIT_CITY="$( jq -r '.INIT_CITY' "00_CONFIG.conf" )"
INIT_LOGO="$( jq -r '.INIT_LOGO' "00_CONFIG.conf" )"
TOKEN_AMOUNT="\"1000000000.0000 IBCT\""



# ./cleos.sh system newaccount --stake-net "0.1000 CR" --stake-cpu "0.1000 CR" --buy-ram "0.1000 CR" ecrio $INIT_ACCOUNT $INIT_PUB_KEY $INIT_PUB_KEY -p ecrio

# ./cleos.sh transfer ecrio $INIT_ACCOUNT "500000000.0000 CR" "init" -p ecrio

./cleos.sh system buyram $INIT_ACCOUNT $INIT_ACCOUNT "1000.0000 CR" -p $INIT_ACCOUNT

./cleos.sh system delegatebw $INIT_ACCOUNT $INIT_ACCOUNT "1000.0000 CR" "1000.0000 CR" -p $INIT_ACCOUNT

./cleos.sh set contract $INIT_ACCOUNT /home/CR/ecrio.contracts/build/ecrio.token

./cleos.sh push action $INIT_ACCOUNT create "[$INIT_ACCOUNT,$TOKEN_AMOUNT]" -p $INIT_ACCOUNT

./cleos.sh push action $INIT_ACCOUNT issue "[$INIT_ACCOUNT,$TOKEN_AMOUNT,issue IBCT token]" -p $INIT_ACCOUNT

./cleos.sh system regproducer $INIT_ACCOUNT $INIT_PUB_KEY $INIT_ACCOUNT "1.0000 IBCT" $INIT_URL 0 $INIT_CITY $INIT_LOGO -p $INIT_ACCOUNT

# ./cleos.sh system burnandearn ecrio "1000.0000 CR" $INIT_ACCOUNT

./cleos.sh system listproducers

# cleos system voteproducer $INIT_ACCOUNT "1000.0000 CR" $INIT_ACCOUNT
# cleos system voteproducer ibctemperor1 "1000.0000 CR" ibctemperor1