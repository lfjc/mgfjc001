#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2b6bbb33-8364-4b90-a5b7-48cc10b717d9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

