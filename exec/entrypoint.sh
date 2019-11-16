#!/bin/bash

# set up ssh secrets
SSH_PATH="$HOME/.ssh"
mkdir "$SSH_PATH"
echo "$KEY" > "$SSH_PATH/key"
chmod 700 "$SSH_PATH"
chmod 600 "$SSH_PATH/key"

# execute command on remote server
sh -c "ssh -i $SSH_PATH/key -o StrictHostKeyChecking=no $USERNAME@$SERVER '$COMMAND'"
