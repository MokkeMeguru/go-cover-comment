#!/bin/bash -l

echo "Welcome to Go Coverage Commenter"

sh /scripts/coverage.sh $1 $2 $3
cat coverage.md

echo "finish:"

