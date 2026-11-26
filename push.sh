#!/usr/bin/env bash
# 6bcjbn9nvs-commits.github.io 루트 저장소가 생성되면 실행: 네이버 소유확인 파일을 올린다.
set -e
cd "$(dirname "$0")"
REPO="https://github.com/6bcjbn9nvs-commits/6bcjbn9nvs-commits.github.io.git"
if [ ! -d .git ]; then
  git init -q
  git config user.name "Nexora Labs"
  git config user.email "nexoralabs.kr@gmail.com"
fi
git add -A
git -c core.quotepath=false commit -q -m "chore: 네이버 서치어드바이저 소유확인 파일 + 루트 안내 페이지" || echo "(nothing to commit)"
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "$REPO"
git push -u origin main
echo "pushed. 1~2분 뒤 확인:"
echo "  https://6bcjbn9nvs-commits.github.io/naver52fd1e0605fdee1d7e7ce59a72d6ac43.html"
