#!/bin/bash

# Exit on first error
set -e

docker rm -f $(docker ps -aq)
docker network prune
docker rmi dev-peer0.org1.example.com-fabcar-node-1.0-5436a4d67f5521697f4cdea223c948161337ce06997e39d3f61c3634a3cbf832

docker pull hyperledger/fabric-orderer:x86_64-1.1.0-preview
docker tag hyperledger/fabric-orderer:x86_64-1.1.0-preview hyperledger/fabric-orderer:latest

docker pull hyperledger/fabric-couchdb:x86_64-1.1.0-preview
docker tag hyperledger/fabric-couchdb:x86_64-1.1.0-preview hyperledger/fabric-couchdb:latest

docker pull hyperledger/fabric-peer:x86_64-1.1.0-preview
docker tag hyperledger/fabric-peer:x86_64-1.1.0-preview hyperledger/fabric-peer:latest

docker pull hyperledger/fabric-ca:x86_64-1.1.0-preview
docker tag hyperledger/fabric-ca:x86_64-1.1.0-preview hyperledger/fabric-ca:latest

docker pull hyperledger/fabric-tools:x86_64-1.1.0-preview
docker tag hyperledger/fabric-tools:x86_64-1.1.0-preview hyperledger/fabric-tools:latest

docker pull hyperledger/fabric-ccenv:x86_64-1.1.0-preview
docker tag hyperledger/fabric-ccenv:x86_64-1.1.0-preview hyperledger/fabric-ccenv:latest

