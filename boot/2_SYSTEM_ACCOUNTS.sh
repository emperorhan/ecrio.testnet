ECRIO_PRODUCER_KEY="$( jq -r '.ECRIO_PUB_KEY' "../.conf" )"
SYSTEM_ACCOUNTS=($( jq -r '.SYSTEM_ACCOUNTS' "../.conf" ))
NODE_PUB_KEY="$( jq -r '.NODE_PUB_KEY' "../.conf" )"

# creatin ecrio.msig, ecrio.token, etc
for sa in "${SYSTEM_ACCOUNTS[@]}"
do
    ./cleos.sh create account ecrio $sa $ECRIO_PRODUCER_KEY $ECRIO_PRODUCER_KEY -p ecrio
done

./cleos.sh create account ecrio ibct $NODE_PUB_KEY $NODE_PUB_KEY -p ecrio
