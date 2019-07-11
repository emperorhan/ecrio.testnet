#!/bin/bash
ECRBINDIR="$( jq -r '.ECRBINDIR' "../.conf" )"
ROOTDIR="$( jq -r '.ROOTDIR' "../.conf" )"
DATADIR="$ROOTDIR/node/blockchain"
PRODUCER_NAME="$( jq -r '.NODE_ACCOUNT' "../.conf" )"
PRIV_KEY="$( jq -r '.NODE_PRIV_KEY' "../.conf" )"
PUB_KEY="$( jq -r '.NODE_PUB_KEY' "../.conf" )"

if [ ! -d $DATADIR ]; then
    mkdir -p $DATADIR;
fi

./stop.sh
echo -e "Starting Nodeos \n";

$ECRBINDIR/nodeos/nodeos --replay-blockchain -p $PRODUCER_NAME --signature-provider=$PUB_KEY=KEY:$PRIV_KEY --genesis-json ../genesis.json --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid