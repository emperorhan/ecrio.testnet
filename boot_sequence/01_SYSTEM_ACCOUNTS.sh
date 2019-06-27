ECRIO_PRODUCER_KEY="$( jq -r '.ECRIO_PRODUCER_PUB_KEY' "00_CONFIG.conf" )"
SYSTEM_ACCOUNT=($( jq -r '.SYSTEM_ACCOUNT' "00_CONFIG.conf" ))
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "00_CONFIG.conf" )"

# creatin ecrio.msig, ecrio.token, etc
for sa in "${SYSTEM_ACCOUNT[@]}"
do
    ./cleos.sh create account ecrio $sa $ECRIO_PRODUCER_KEY $ECRIO_PRODUCER_KEY -p ecrio
done

./cleos.sh create account ecrio ibct $INIT_PUB_KEY $INIT_PUB_KEY -p ecrio
