#!/bin/sh

echo "Waiting for MongoDB to Start..."
./wait-for db:27017


echo "Starting DB migration..."
npm run db:up

echo "Starting the server..."
npm start