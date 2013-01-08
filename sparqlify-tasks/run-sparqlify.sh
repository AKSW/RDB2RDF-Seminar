#!/bin/bash

wd="$(dirname $0)"
cd "$wd"

git init results >> git.log

find . -name 'mapping*.sparqlify' | grep -v 'results' | xargs -I@ cp --parents -uf @ results

cd results
git add -A
git commit -m "next" >> ../git.log

cd "$wd"
./run-sparqlify-core.sh $@

