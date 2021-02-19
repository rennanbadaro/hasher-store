#!/bin/bash

BASE_DIR=$PWD
PRODUCT_DIR=$BASE_DIR/product-service
DISCOUNT_DIR=$BASE_DIR/discount-service

cd $PRODUCT_DIR
docker-compose down

cd $DISCOUNT_DIR
docker-compose down
