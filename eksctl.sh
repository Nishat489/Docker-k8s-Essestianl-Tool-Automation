#!/bin/bash

# Download eksctl binary from GitHub releases
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

# Move eksctl binary to /usr/local/bin (requires sudo)
sudo mv /tmp/eksctl /usr/local/bin

#version check
eksctl version
