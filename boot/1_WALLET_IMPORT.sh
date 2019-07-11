WALLET_PASS="$( jq -r '.WALLET_PWD' "../.conf" )"
ECRIO_PRIV="$( jq -r '.ECRIO_PRIV_KEY' "../.conf" )"

./cleos.sh wallet unlock --password $WALLET_PASS

./cleos.sh wallet import --private-key $ECRIO_PRIV

