#!/bin/bash
ECRBINDIR="$( jq -r '.ECRBINDIR' "../.conf" )"
ROOTDIR="$( jq -r '.ROOTDIR' "../.conf" )"
DATADIR="$ROOTDIR/mongodb/blockchain"

if [ ! -d $DATADIR ]; then
    mkdir -p $DATADIR;
fi

./stop.sh
echo -e "Starting Nodeos \n";

$ECRBINDIR/nodeos/nodeos --replay-blockchain --contracts-console --genesis-json ../genesis.json --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid