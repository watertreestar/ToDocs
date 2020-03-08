#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd public

# 如果是发布到自定义域名
echo 'doc.mrchen.org' > CNAME

cd ..

git add -A
git commit -m 'deploy'

git push -f origin master

cd -
