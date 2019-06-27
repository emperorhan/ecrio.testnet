WALLET_PASS="$( jq -r '.WALLET_PASSWD' "00_CONFIG.conf" )"
ECRIO_PRIV="$( jq -r '.ECRIO_PRODUCER_PRIV_KEY' "00_CONFIG.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "00_CONFIG.conf" )"
PRIV_KEY_1="$( jq -r '.PRIV_KEY_1' "00_CONFIG.conf" )"
PRIV_KEY_2="$( jq -r '.PRIV_KEY_2' "00_CONFIG.conf" )"
PRIV_KEY_3="$( jq -r '.PRIV_KEY_3' "00_CONFIG.conf" )"
PRIV_KEY_4="$( jq -r '.PRIV_KEY_4' "00_CONFIG.conf" )"
PRIV_KEY_5="$( jq -r '.PRIV_KEY_5' "00_CONFIG.conf" )"
PRIV_KEY_6="$( jq -r '.PRIV_KEY_6' "00_CONFIG.conf" )"
PRIV_KEY_7="$( jq -r '.PRIV_KEY_7' "00_CONFIG.conf" )"

./cleos.sh wallet unlock --password $WALLET_PASS

./cleos.sh wallet import --private-key $ECRIO_PRIV
./cleos.sh wallet import --private-key $INIT_PRIV_KEY
# ./cleos.sh wallet import --private-key $PRIV_KEY_1
# ./cleos.sh wallet import --private-key $PRIV_KEY_2
# ./cleos.sh wallet import --private-key $PRIV_KEY_3
# ./cleos.sh wallet import --private-key $PRIV_KEY_4
# ./cleos.sh wallet import --private-key $PRIV_KEY_5
# ./cleos.sh wallet import --private-key $PRIV_KEY_6
# ./cleos.sh wallet import --private-key $PRIV_KEY_7


