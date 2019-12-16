#!/bin/bash
# 部署到 github pages 脚本

# 错误时终止脚本
set -e

#
git add -A

# Commit changes.
msg="building site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

#
git commit -m "$msg"

# 推送到github .github.io 只能使用 master分支
git push -f master master

# 回到原文件夹
cd ..
