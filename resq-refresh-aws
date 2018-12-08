#!/bin/bash

CONFIGFOLDER='/root/.resqcore'
COIN_NAME='RESQ'
COIN_PATH='/usr/bin/'
COIN_DAEMON='resqd'
COIN_CLI='resq-cli'

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

##### Main #####
clear

sudo systemctl stop $COIN_NAME.service
# $COIN_CLI stop

sleep 15

sudo rm -r $CONFIGFOLDER/.lock >/dev/null 2>&1
sudo rm -r $CONFIGFOLDER/.cookie >/dev/null 2>&1
sudo rm -r $CONFIGFOLDER/backups >/dev/null 2>&1
sudo rm -r $CONFIGFOLDER/blocks >/dev/null 2>&1
sudo rm -r $CONFIGFOLDER/chainstate >/dev/null 2>&1
sudo rm -r $CONFIGFOLDER/database >/dev/null 2>&1
sudo rm $CONFIGFOLDER/banlist.dat >/dev/null 2>&1
sudo rm $CONFIGFOLDER/db.log >/dev/null 2>&1
sudo rm $CONFIGFOLDER/debug.log >/dev/null 2>&1
sudo rm $CONFIGFOLDER/fee_estimates.dat >/dev/null 2>&1
sudo rm $CONFIGFOLDER/governance.dat >/dev/null 2>&1
sudo rm $CONFIGFOLDER/masternode.conf >/dev/null 2>&1
sudo rm $CONFIGFOLDER/mncache.dat >/dev/null 2>&1
sudo rm $CONFIGFOLDER/mnpayments.dat >/dev/null 2>&1
sudo rm $CONFIGFOLDER/netfulfilled.dat >/dev/null 2>&1
sudo rm $CONFIGFOLDER/peers.dat >/dev/null 2>&1

sudo ls -al $CONFIGFOLDER

sleep 5

sudo systemctl start $COIN_NAME.service
# $COIN_DAEMON -daemon -reindex

echo -e "${GREEN}$COIN_NAME Masternode refreshed!${NC}"
