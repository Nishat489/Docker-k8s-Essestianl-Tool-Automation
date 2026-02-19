#!/bin/bash

curl -LO https://dl.k8s.io/release/v1.32.0/bin/linux/amd64/kubectl

echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

kubectl version --client
