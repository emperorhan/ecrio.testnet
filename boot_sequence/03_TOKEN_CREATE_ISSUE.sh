./cleos.sh push action ecrio.token create '["ecrio", "10000000000.0000 CR"]' -p ecrio.token
sleep 2s
./cleos.sh push action ecrio.token issue '["ibct", "1000000000.0000 CR", "init"]' -p ecrio
sleep 2s


