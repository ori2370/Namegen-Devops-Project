#!/bin/bash

mongo --host localhost:27017 \
  -u "$MONGO_INITDB_ROOT_USERNAME" \
  -p "$MONGO_INITDB_ROOT_PASSWORD" \
  --authenticationDatabase admin \
  --eval "
db = db.getSiblingDB('namegen');

db.createUser({
  user: '$MONGO_INITDB_ROOT_USERNAME',
  pwd: '$MONGO_INITDB_ROOT_PASSWORD',
  roles: [
    {
      role: 'readWrite',
      db: 'namegen'
    }
  ]
});
"