#!/usr/bin/env sh

# abort on errors
set -e

npm run build

cd dist

echo 'snuze.app' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:wesharper/snuze-site.git master:gh-pages
cd -
