#!/bin/bash -l

echo "Welcome to Go Coverage Commenter"

sh /scripts/coverage.sh ${{ github.repository }} ${{ github.head_ref }} ${{ github.base_ref }}
cat coverage.md

echo "finish:"

