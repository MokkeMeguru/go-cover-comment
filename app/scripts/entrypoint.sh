#!/bin/bash -l

echo "Welcome to Go Coverage Commenter"

echo "input:" $1 $2 $3 
sh /scripts/coverage.sh $1 $2 $3
cat coverage.md

echo "finish:"

