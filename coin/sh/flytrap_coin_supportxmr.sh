#!/bin/bash
workon coin
cd 
cd github/coinhive-stratum-mining-proxy
python coinhive-stratum-mining-proxy.py pool.supportxmr.com 5555 --websocket_port 8892
