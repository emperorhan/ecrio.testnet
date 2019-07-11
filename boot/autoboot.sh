#!/bin/bash    
ROOTDIR="$( jq -r '.ROOTDIR' "../.conf" )"
GENESISDATADIR="$ROOTDIR/genesis/blockchain"
NODEDATADIR="$ROOTDIR/node/blockchain"

killall nodeos

sleep 1s

#run ecrio node. see datadir for logs
cd $ROOTDIR/genesis
if [ ! -d $GENESISDATADIR ]; then
    ./start.sh
else
    ./restart.sh
fi

cd $ROOTDIR/node
if [ ! -d $NODEDATADIR ]; then
    ./start.sh
else
    ./restart.sh
fi

cd $ROOTDIR/boot

#give time for the node to be initialized.
sleep 1s

#run booting sequences. sleep 1s between each sript for actions to get propagated
#unlock wallet
./1_WALLET_IMPORT.sh &> /dev/null
./2_* 
./3_*
./4_*
#set contract setpriv might take too long so that it sometimes gets reject.
#there fore run in three times to make sure that the contract is set properly
#changes: in order to prevent transactions taking more than 30ms and being refused, eosio::producer_plugin --max-transaction-time=300 parameter has been added to eosio node
./5_*
./6_*

./cleos.sh get info

./7_*
#now manually shutdown ecrio nodeos
