#!/bin/bash

CONFIGFOLDER='/root/.resqcore'
COIN_NAME='RESQ'
COIN_PATH='/usr/local/bin/'
COIN_DAEMON='resqd'
COIN_CLI='resq-cli'

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

##### Main #####
clear

# systemctl stop $COIN_NAME.service
$COIN_CLI stop

sleep 15

rm -r $CONFIGFOLDER/.lock >/dev/null 2>&1
rm -r $CONFIGFOLDER/.cookie >/dev/null 2>&1
rm -r $CONFIGFOLDER/backups >/dev/null 2>&1
rm -r $CONFIGFOLDER/blocks >/dev/null 2>&1
rm -r $CONFIGFOLDER/chainstate >/dev/null 2>&1
rm -r $CONFIGFOLDER/database >/dev/null 2>&1
rm $CONFIGFOLDER/banlist.dat >/dev/null 2>&1
rm $CONFIGFOLDER/db.log >/dev/null 2>&1
rm $CONFIGFOLDER/debug.log >/dev/null 2>&1
rm $CONFIGFOLDER/fee_estimates.dat >/dev/null 2>&1
rm $CONFIGFOLDER/governance.dat >/dev/null 2>&1
rm $CONFIGFOLDER/masternode.conf >/dev/null 2>&1
rm $CONFIGFOLDER/mncache.dat >/dev/null 2>&1
rm $CONFIGFOLDER/mnpayments.dat >/dev/null 2>&1
rm $CONFIGFOLDER/netfulfilled.dat >/dev/null 2>&1
rm $CONFIGFOLDER/peers.dat >/dev/null 2>&1

ls -al $CONFIGFOLDER

sleep 5

$COIN_DAEMON -daemon -reindex

echo -e "${GREEN}$COIN_NAME Masternode refreshed!${NC}"
