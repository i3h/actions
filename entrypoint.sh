#!/bin/bash

# set up ssh secrets
SSH_PATH="~/.ssh"
mkdir "$SSH_PATH"
echo "$KEY" > "$SSH_PATH/key"
chmod 700 "$SSH_PATH"
chmod 600 "$SSH_PATH/key"

# rsync to remote server
sh -c "rsync -v -a --progress --delete -e 'ssh -i $SSH_PATH/key -o StrictHostKeyChecking=no' $SRC $USERNAME@$SERVER:$DEST"
