#!/bin/sh

if [ -z "$EMAIL" ]; then
  echo '$EMAIL is required'
  exit 1
fi

yes n | ssh-keygen -q -t rsa -b 4096 -C "$EMAIL" -N "" -f ~/.ssh/id_rsa >/dev/null
echo "ssh key (~/.ssh/id_rsa.pub):"
cat ~/.ssh/id_rsa.pub