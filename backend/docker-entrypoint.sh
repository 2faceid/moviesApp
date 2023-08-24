#!/bin/sh

echo "waiting for mongoDB to start..."
./wait-for db:27017

echo "Starting DB migration..."
mpm run db:up

echo "starting the server ..."
npm start 