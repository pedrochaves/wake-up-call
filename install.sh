#!/bin/bash

echo -e "Installing Wake Up Call dependencies..."
apt-get install moc

echo -e "Installing on /usr/bin..."
cp wake-up-call.sh /usr/bin/wuc && chmod +x /usr/bin/wuc

echo -e "Done!"
