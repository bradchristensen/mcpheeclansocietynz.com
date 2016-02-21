#!/usr/bin/env sh

mkdir build
mv * build
tar -czf mcpheeclansocietynz_com.tgz build
export SSHPASS=$DEPLOY_PASS
sshpass -e scp mcpheeclansocietynz_com.tgz $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH/packages
sshpass -e ssh $DEPLOY_USER@$DEPLOY_HOST $DEPLOY_PATH/scripts/deployMcpheeClanSocietyNz.sh
