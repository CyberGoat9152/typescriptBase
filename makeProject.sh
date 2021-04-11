#!/bin/bash
if [ -z $1 ]
then
  echo "Project name: "
  read projName
  mkdir $projName
  cd $projName
  mkdir src
  mkdir src/modules
  mkdir src/interfaces
  cd src
  touch index.ts
  touch route.ts
  npm init -y
  npm i typescript ts-node-dev -D
  npm i express @types/express -D
  npm i cors @types/cors -D
  npx tsc --init
  clear
  echo "Tip: use 'npx ts-node-dev src/index.ts --respawn --transpileOnly'  "
else
  mkdir $1
  cd $1
  mkdir src
  mkdir src/modules
  mkdir src/interfaces
  touch index.ts
  touch route.ts
  npm init -y
  npm i typescript ts-node-dev -D
  npm i express @types/express -D
  npm i cors @types/cors -D
  npx tsc --init 
  clear
  echo "Tip: use 'npx ts-node-dev src/index.ts --respawn --transpileOnly'  "
fi

