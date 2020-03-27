#!/bin/bash
if [ "$VERSION" == "latest" ]; then
	URL=https://github.com/$REPOSITORY/releases/latest/download/$FILE
else
	URL=https://github.com/$REPOSITORY/releases/download/$VERSION/$FILE
fi

if [ -z "$TOKEN" ]; then
	HEADER=""
else
	HEADER="Authorization: token $TOKEN"
fi

wget --header=$HEADER -O $FILE $URL
