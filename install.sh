#!/bin/sh

for f in install/*.sh; do
  sh "$f" -H || break
done

source ~/.zshrc
