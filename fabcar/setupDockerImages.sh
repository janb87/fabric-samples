#!/bin/bash

# Exit on first error
set -e

docker rm -f $(docker ps -aq)
docker network prune
docker rmi dev-peer0.org1.example.com-fabcar-1.0-5c906e402ed29f20260ae42283216aa75549c571e2e380f3615826365d8269ba

docker pull hyperledger/fabric-orderer:x86_64-1.0.4
docker tag hyperledger/fabric-orderer:x86_64-1.0.4 hyperledger/fabric-orderer:latest

docker pull hyperledger/fabric-couchdb:x86_64-1.0.4
docker tag hyperledger/fabric-couchdb:x86_64-1.0.4 hyperledger/fabric-couchdb:latest

docker pull hyperledger/fabric-peer:x86_64-1.0.4
docker tag hyperledger/fabric-peer:x86_64-1.0.4 hyperledger/fabric-peer:latest

docker pull hyperledger/fabric-ca:x86_64-1.0.4
docker tag hyperledger/fabric-ca:x86_64-1.0.4 hyperledger/fabric-ca:latest

docker pull hyperledger/fabric-tools:x86_64-1.0.4
docker tag hyperledger/fabric-tools:x86_64-1.0.4 hyperledger/fabric-tools:latest

docker pull hyperledger/fabric-ccenv:x86_64-1.0.4
docker tag hyperledger/fabric-ccenv:x86_64-1.0.4 hyperledger/fabric-ccenv:latest

