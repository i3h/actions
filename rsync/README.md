## rsync

```
- name: rsync to remote server
  uses: noobly314/actions/rsync@master
  env:
    SERVER: $YOUR_SERVER
    USERNAME: $YOUR_USERNAME
    SRC: $SOURCE_DIRECTORY
    DEST: $DESTINATION_DIRECTORY
    KEY: ${{ secrets.PRIVATE_KEY }}

```
