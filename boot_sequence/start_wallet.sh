NODEOSBINDIR="/home/CR/ecrio/build/programs"
DATADIR="/home/CR/ecr_private/wallet"
WALLET_HOST="127.0.0.1"
WALLET_POSRT="3000"


/home/CR/ecr_private/ecr_boot_steps/stop_wallet.sh
$NODEOSBINDIR/keosd/keosd --config-dir $DATADIR --wallet-dir $DATADIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $DATADIR/wallet.pid