#!/bin/bash
workon coin
cd 
cd github/coinhive-stratum-mining-proxy
python coinhive-stratum-mining-proxy.py sg.minexmr.com 3333 --websocket_port 8894
