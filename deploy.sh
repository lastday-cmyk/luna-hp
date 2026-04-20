#!/usr/bin/env bash
# Luna HP デプロイ＋コミット＋push 一括実行
#
# 使い方:
#   ./deploy.sh                       # 自動コミットメッセージ
#   ./deploy.sh "fix: 〇〇を修正"     # カスタムメッセージ
#
# 動作:
#   1. styles.css → style.css 同期（Wrangler ハッシュ衝突回避）
#   2. Cloudflare Pages (luna-hp) へ wrangler で直接アップロード
#   3. 変更があれば git add -A → commit → push origin main
#
# 前提:
#   - wrangler 認証済み（~/.npm/_npx/... にキャッシュ版あり）
#   - oauthトークン有効（1h で切れるので wrangler login で再認証）

set -euo pipefail

cd "$(dirname "$0")"

WRANGLER="${WRANGLER_BIN:-/Users/pfab/.npm/_npx/d77349f55c2be1c0/node_modules/.bin/wrangler}"
PROJECT_NAME="luna-hp"
BRANCH="main"
MSG="${1:-}"

# ----- 1. CSS 同期 -----
if [ -f styles.css ]; then
  cp styles.css style.css
  echo "✓ styles.css → style.css 同期完了"
fi

# ----- 2. Cloudflare Pages デプロイ -----
echo "── デプロイ中: $PROJECT_NAME ──"
"$WRANGLER" pages deploy . \
  --project-name="$PROJECT_NAME" \
  --branch="$BRANCH" \
  --commit-dirty=true

# ----- 3. Git コミット＆push -----
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  if [ -z "$MSG" ]; then
    TS=$(date "+%Y-%m-%d %H:%M")
    MSG="deploy: ${TS} 自動デプロイ"
  fi
  git commit -m "$MSG"
  git push origin "$BRANCH"
  echo "✓ コミット＆push完了: $MSG"
else
  echo "✓ 変更なし（コミット省略）"
fi

echo "🚀 完了: https://md-luna.com/"
