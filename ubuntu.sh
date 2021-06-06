#! /bin/bash
PROTOC_VERSION=3.13.0

# Make sure you grab the latest version
curl -OL https://github.com/google/protobuf/releases/download/v$PROTOC_VERSION/protoc-$PROTOC_VERSION-linux-x86_64.zip

# Unzip
unzip protoc-$PROTOC_VERSION-linux-x86_64.zip -d protoc3

# Move protoc to /usr/local/bin/
sudo cp -r protoc3/bin/* /usr/local/bin/

# Move protoc3/include to /usr/local/include/
sudo cp -r protoc3/include/* /usr/local/include/

# Optional: change owner
sudo chown $USER /usr/local/bin/protoc
sudo chown -R $USER /usr/local/include/google

sudo ldconfig
