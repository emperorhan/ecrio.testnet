WALLETDIR="$( jq -r '.WALLETDIR' "../.conf" )"

    if [ -f $WALLETDIR"/wallet.pid" ]; then
        pid=$(cat $WALLETDIR"/wallet.pid")
        echo $pid
        kill $pid
        rm -r $WALLETDIR"/wallet.pid"

        echo -ne "Stoping Wallet"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rWallet stopped. \n"

    fi
