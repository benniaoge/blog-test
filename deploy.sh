#!/usr/bin/env sh

set -e

npm run docs:build

cd docs/.vuepress/dist

# echo "www.demo.com" > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:benniaoge/blog-test.git master:gh-pages

cd -