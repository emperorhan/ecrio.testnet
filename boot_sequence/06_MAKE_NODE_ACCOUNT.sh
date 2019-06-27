ACCOUNT_1="$( jq -r '.ACCOUNT_1' "00_CONFIG.conf" )"
PUB_KEY_1="$( jq -r '.PUB_KEY_1' "00_CONFIG.conf" )"
PRIV_KEY_1="$( jq -r '.PRIV_KEY_1' "00_CONFIG.conf" )"
URL_1="$( jq -r '.URL_1' "00_CONFIG.conf" )"
CITY_1="$( jq -r '.CITY_1' "00_CONFIG.conf" )"
LOGO_1="$( jq -r '.LOGO_1' "00_CONFIG.conf" )"

ACCOUNT_2="$( jq -r '.ACCOUNT_2' "00_CONFIG.conf" )"
PUB_KEY_2="$( jq -r '.PUB_KEY_2' "00_CONFIG.conf" )"
PRIV_KEY_2="$( jq -r '.PRIV_KEY_2' "00_CONFIG.conf" )"
URL_2="$( jq -r '.URL_2' "00_CONFIG.conf" )"
CITY_2="$( jq -r '.CITY_2' "00_CONFIG.conf" )"
LOGO_2="$( jq -r '.LOGO_2' "00_CONFIG.conf" )"

ACCOUNT_3="$( jq -r '.ACCOUNT_3' "00_CONFIG.conf" )"
PUB_KEY_3="$( jq -r '.PUB_KEY_3' "00_CONFIG.conf" )"
PRIV_KEY_3="$( jq -r '.PRIV_KEY_3' "00_CONFIG.conf" )"
URL_3="$( jq -r '.URL_3' "00_CONFIG.conf" )"
CITY_3="$( jq -r '.CITY_3' "00_CONFIG.conf" )"
LOGO_3="$( jq -r '.LOGO_3' "00_CONFIG.conf" )"

ACCOUNT_4="$( jq -r '.ACCOUNT_4' "00_CONFIG.conf" )"
PUB_KEY_4="$( jq -r '.PUB_KEY_4' "00_CONFIG.conf" )"
PRIV_KEY_4="$( jq -r '.PRIV_KEY_4' "00_CONFIG.conf" )"
URL_4="$( jq -r '.URL_4' "00_CONFIG.conf" )"
CITY_4="$( jq -r '.CITY_4' "00_CONFIG.conf" )"
LOGO_4="$( jq -r '.LOGO_4' "00_CONFIG.conf" )"

ACCOUNT_5="$( jq -r '.ACCOUNT_5' "00_CONFIG.conf" )"
PUB_KEY_5="$( jq -r '.PUB_KEY_5' "00_CONFIG.conf" )"
PRIV_KEY_5="$( jq -r '.PRIV_KEY_5' "00_CONFIG.conf" )"
URL_5="$( jq -r '.URL_5' "00_CONFIG.conf" )"
CITY_5="$( jq -r '.CITY_5' "00_CONFIG.conf" )"
LOGO_5="$( jq -r '.LOGO_5' "00_CONFIG.conf" )"

ACCOUNT_6="$( jq -r '.ACCOUNT_6' "00_CONFIG.conf" )"
PUB_KEY_6="$( jq -r '.PUB_KEY_6' "00_CONFIG.conf" )"
PRIV_KEY_6="$( jq -r '.PRIV_KEY_6' "00_CONFIG.conf" )"
URL_6="$( jq -r '.URL_6' "00_CONFIG.conf" )"
CITY_6="$( jq -r '.CITY_6' "00_CONFIG.conf" )"
LOGO_6="$( jq -r '.LOGO_6' "00_CONFIG.conf" )"

ACCOUNT_7="$( jq -r '.ACCOUNT_7' "00_CONFIG.conf" )"
PUB_KEY_7="$( jq -r '.PUB_KEY_7' "00_CONFIG.conf" )"
PRIV_KEY_7="$( jq -r '.PRIV_KEY_7' "00_CONFIG.conf" )"
URL_7="$( jq -r '.URL_7' "00_CONFIG.conf" )"
CITY_7="$( jq -r '.CITY_7' "00_CONFIG.conf" )"
LOGO_7="$( jq -r '.LOGO_7' "00_CONFIG.conf" )"

./cleos.sh system newaccount --stake-net "1000.0000 CR" --stake-cpu "1000.0000 CR" --buy-ram "100.0000 CR" ibct $ACCOUNT_1 $PUB_KEY_1 $PUB_KEY_1 -p ibct

./cleos.sh system newaccount --stake-net "1000.0000 CR" --stake-cpu "1000.0000 CR" --buy-ram "100.0000 CR" ibct $ACCOUNT_2 $PUB_KEY_2 $PUB_KEY_2 -p ibct

./cleos.sh system newaccount --stake-net "1000.0000 CR" --stake-cpu "1000.0000 CR" --buy-ram "100.0000 CR" ibct $ACCOUNT_3 $PUB_KEY_3 $PUB_KEY_3 -p ibct

./cleos.sh system newaccount --stake-net "1000.0000 CR" --stake-cpu "1000.0000 CR" --buy-ram "100.0000 CR" ibct $ACCOUNT_4 $PUB_KEY_4 $PUB_KEY_4 -p ibct

./cleos.sh system newaccount --stake-net "1000.0000 CR" --stake-cpu "1000.0000 CR" --buy-ram "100.0000 CR" ibct $ACCOUNT_5 $PUB_KEY_5 $PUB_KEY_5 -p ibct

./cleos.sh system newaccount --stake-net "1000.0000 CR" --stake-cpu "1000.0000 CR" --buy-ram "100.0000 CR" ibct $ACCOUNT_6 $PUB_KEY_6 $PUB_KEY_6 -p ibct

./cleos.sh system newaccount --stake-net "1000.0000 CR" --stake-cpu "1000.0000 CR" --buy-ram "100.0000 CR" ibct $ACCOUNT_7 $PUB_KEY_7 $PUB_KEY_7 -p ibct

./cleos.sh transfer ibct $ACCOUNT_1 "1000000.0000 CR" "init" -p ibct
./cleos.sh transfer ibct $ACCOUNT_2 "1000000.0000 CR" "init" -p ibct
./cleos.sh transfer ibct $ACCOUNT_3 "1000000.0000 CR" "init" -p ibct
./cleos.sh transfer ibct $ACCOUNT_4 "1000000.0000 CR" "init" -p ibct
./cleos.sh transfer ibct $ACCOUNT_5 "1000000.0000 CR" "init" -p ibct
./cleos.sh transfer ibct $ACCOUNT_6 "1000000.0000 CR" "init" -p ibct
./cleos.sh transfer ibct $ACCOUNT_7 "1000000.0000 CR" "init" -p ibct