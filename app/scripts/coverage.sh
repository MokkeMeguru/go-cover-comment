#!/bin/bash

echo "run coverage.sh"

script_source="/src"

if [ $# != 3 ]; then
	echo "Usage: "
	echo "sh ./scripts/coverage/coverage.sh <repo> <target_branch_name> <source_branch_name>"
	echo "Example: "
	echo "sh ./scripts/coverage/coverage.sh \${{ GITHUB_REPOSITORY }} feature/size develop"
	echo "or"
	echo "sh ./scripts/coverage/coverage.sh MokkeMeguru/go-cover-commenter feature/size develop"
	exit 0
fi
echo "repo is :"
echo $1

# variable
# git checkout
git fetch origin $2
git fetch origin $3

commit_hash=$(git rev-parse HEAD)

# run raw test coverage
go test ./internal/... -coverprofile=cover.out.tmp
cat cover.out.tmp | grep -v "gen.go" >cover.out
go tool cover -func cover.out -o cover.tsv

# formatted coverage
echo $(git diff HEAD origin/$3 --name-only)
python ${script_source}/coverage/coverage_stats.py $(git diff HEAD origin/$3 --name-only) --repo $1 --commit_hash $commit_hash
python ${script_source}/coverage/coverage_details.py $(git diff HEAD origin/$3 --name-only) --repo $1 --commit_hash $commit_hash

cat coverage_d.md >>coverage.md
cat coverage.md
