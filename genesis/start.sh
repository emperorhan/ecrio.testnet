#!/bin/bash
ECRBINDIR="$( jq -r '.ECRBINDIR' "../.conf" )"
ROOTDIR="$( jq -r '.ROOTDIR' "../.conf" )"
DATADIR="$ROOTDIR/genesis/blockchain"
PRODUCER_NAME="$( jq -r '.ECRIO_ACCOUNT' "../.conf" )"
PRIV_KEY="$( jq -r '.ECRIO_PRIV_KEY' "../.conf" )"
PUB_KEY="$( jq -r '.ECRIO_PUB_KEY' "../.conf" )"

if [ ! -d $DATADIR ]; then
    mkdir -p $DATADIR;
fi

./stop.sh
echo -e "Starting Nodeos \n";

$ECRBINDIR/nodeos/nodeos -p $PRODUCER_NAME --signature-provider=$PUB_KEY=KEY:$PRIV_KEY --genesis-json ../genesis.json --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid