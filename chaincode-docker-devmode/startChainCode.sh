# Terminal 1
docker-compose -f docker-compose-simple.yaml up

# Terminal 2
docker exec -it chaincode bash
cd fabcar/node
npm install
CORE_CHAINCODE_ID_NAME=mycc:0 node chaincode.js --peer.address=peer:7051