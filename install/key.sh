#!/bin/sh

yes n | ssh-keygen -q -t rsa -b 4096 -C "$EMAIL" -N "" -f ~/.ssh/id_rsa >/dev/null
echo "New ssh key:"
cat ~/.ssh/id_rsa.pub