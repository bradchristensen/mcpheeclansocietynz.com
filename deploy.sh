#!/usr/bin/env sh

mkdir build
mv * build
tar -czf mcpheeclansocietynz_com.tgz build
export SSHPASS=$DEPLOY_PASS
dig $DEPLOY_HOST
sshpass -e scp mcpheeclansocietynz_com.tgz $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
sshpass -e ssh $DEPLOY_USER@$DEPLOY_HOST $DEPLOY_PATH/scripts/deployMcpheeClanSocietyNz.sh
