./cleos.sh push action ecrio.token create '["ecrio", "10000000000.0000 CR"]' -p ecrio.token
./cleos.sh push action ecrio.token issue '["ecrio", "1000000000.0000 CR", "init"]' -p ecrio
./cleos.sh push action ecrio.token transfer '["ecrio", "ibct", "1000000000.0000 CR", "init"]' -p ecrio