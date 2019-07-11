ECRBINDIR="$( jq -r '.ECRBINDIR' "../.conf" )"
WALLETDIR="$( jq -r '.WALLETDIR' "../.conf" )"

WALLET_HOST="127.0.0.1"
WALLET_POSRT="7777"


/home/CR/ecrio.testnet/boot/stop_wallet.sh
$ECRBINDIR/keosd/keosd --config-dir $WALLETDIR --wallet-dir $WALLETDIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $WALLETDIR/wallet.pid