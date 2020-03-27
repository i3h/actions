#!/bin/bash
if [ "$VERSION" == "latest" ]; then
	URL=https://github.com/$REPOSITORY/releases/latest/download/$FILE
else
	URL=https://github.com/$REPOSITORY/releases/download/$VERSION/$FILE
fi
wget -O $FILE $URL
