#!/bin/bash

export HOME=/Users/robert

/usr/local/bin/kubectl config set-context docker-desktop

cd /Users/robert/projects/minecraft-bedrock-server-kubernetes

make restart

/usr/local/bin/kubectl wait --for=condition=Ready pod/bds-0 -n minecraft-server --timeout=60s

make config

echo "completed" `date`
