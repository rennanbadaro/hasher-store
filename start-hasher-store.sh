#!/bin/bash

git clone git@github.com:rennanbadaro/product-service.git
git clone git@github.com:rennanbadaro/discount-service.git

BASE_DIR=$PWD
PRODUCT_DIR=$BASE_DIR/product-service
DISCOUNT_DIR=$BASE_DIR/discount-service

cd $PRODUCT_DIR
cp .env.example .env
docker-compose up -d

sleep 5

cd $DISCOUNT_DIR
cp .env.example .env
docker-compose up -d -- api
