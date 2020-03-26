## rsync

```
- name: rsync to remote server
  uses: noobly314/actions/rsync
  env:
    KEY: PRIVATE_KEY
    USERNAME: YOUR_USERNAME
    SERVER: YOUR_SERVER
    SRC: SOURCE_DIRECTORY
    DEST: DESTINATION_DIRECTORY

- name: rsync with ssh jump server
  uses: noobly314/actions/rsync
  env:
    KEY: PRIVATE_KEY
    USERNAME: YOUR_USERNAME
    SERVER: YOUR_SERVER
    SRC: SOURCE_DIRECTORY
    DEST: DESTINATION_DIRECTORY
    PROXY_KEY: KEY_OF_PROXY
    PROXY_USERNAME: USERNAME_OF_PROXY
    PROXY_SERVER: SERVER_OF_PROXY
```
