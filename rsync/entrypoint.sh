#!/bin/bash

# set up ssh secrets
SSH_PATH=$HOME/.ssh
mkdir $SSH_PATH
echo $KEY > $SSH_PATH/key
echo $PROXY_KEY > $SSH_PATH/proxy_key
chmod 700 $SSH_PATH
chmod 600 $SSH_PATH/key
chmod 600 $SSH_PATH/proxy_key

# rsync to remote server
rsync -v -a --progress --delete -e "ssh -o StrictHostKeyChecking=no -o ProxyCommand='ssh -o StrictHostKeyChecking=no -W %h:%p -i $SSH_PATH/proxy_key ${PROXY_USERNAME}@${PROXY_SERVER}' -i ${SSH_PATH}/key" $SRC $USERNAME@$SERVER:$DEST
