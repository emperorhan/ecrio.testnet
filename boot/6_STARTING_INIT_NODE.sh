CONTRACTS_FOLDER="$( jq -r '.CONTRACTDIR' "../.conf")"
NODE_ACCOUNT="$( jq -r '.NODE_ACCOUNT' "../.conf" )"
NODE_PUB_KEY="$( jq -r '.NODE_PUB_KEY' "../.conf" )"
NODE_PRIV_KEY="$( jq -r '.NODE_PRIV_KEY' "../.conf" )"
NODE_URL="$( jq -r '.NODE_URL' "../.conf" )"
NODE_CITY="$( jq -r '.NODE_CITY' "../.conf" )"
NODE_LOGO="$( jq -r '.NODE_LOGO' "../.conf" )"
TOKEN_AMOUNT="\"1000000000.0000 IBCT\""

./cleos.sh system buyram $NODE_ACCOUNT $NODE_ACCOUNT "1000.0000 CR" -p $NODE_ACCOUNT

./cleos.sh system delegatebw $NODE_ACCOUNT $NODE_ACCOUNT "1000.0000 CR" "1000.0000 CR" -p $NODE_ACCOUNT

./cleos.sh set contract $NODE_ACCOUNT $CONTRACTS_FOLDER/ecrio.token

./cleos.sh push action $NODE_ACCOUNT create "[$NODE_ACCOUNT,$TOKEN_AMOUNT]" -p $NODE_ACCOUNT

./cleos.sh push action $NODE_ACCOUNT issue "[$NODE_ACCOUNT,$TOKEN_AMOUNT,issue IBCT token]" -p $NODE_ACCOUNT

./cleos.sh system regproducer $NODE_ACCOUNT $NODE_PUB_KEY $NODE_ACCOUNT "1.0000 IBCT" $NODE_URL 0 $NODE_CITY $NODE_LOGO -p $NODE_ACCOUNT

./cleos.sh system listproducers