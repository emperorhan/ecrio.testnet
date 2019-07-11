#!/bin/bash
ECRBINDIR="$( jq -r '.ECRBINDIR' "../.conf" )"

NODEHOST="127.0.0.1"
NODEPORT="8888"
WALLETHOST="127.0.0.1"
WALLETPORT="7777"

$ECRBINDIR/cleos/cleos -u http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT "$@"