# GitHub セットアップ手順

## ✅ ローカル Git 初期化（完了）

```bash
✓ git init
✓ git branch → main
✓ 全ファイルステージング
✓ 初回コミット: feat: Maison de Luna HP 初版 — 静的サイト構築
```

**現在の状態**:
```
ブランチ: main
コミット: 7ebbadf (8 files)
ステータス: clean (変更なし)
```

---

## 📋 GitHub でリモートリポジトリ作成（手動）

### Step 1: GitHub にログイン
1. https://github.com にアクセス
2. 右上 **+** → **New repository**

### Step 2: リポジトリ設定

| 項目 | 値 |
|------|-----|
| Repository name | `luna-hp` |
| Description | Maison de Luna — International Trade & Commerce |
| Visibility | Public または Private （クライアント機密でなければ Public推奨） |
| Initialize | ❌ README, .gitignore は既にローカルにあるため不要 |
| License | MIT（任意） |

### Step 3: Create repository ボタンをクリック

完了すると以下の画面が表示されます：
```
…or push an existing repository from the command line

git remote add origin https://github.com/YOUR_USERNAME/luna-hp.git
git branch -M main
git push -u origin main
```

---

## 🚀 ローカルから GitHub に Push

上記の画面に表示されたコマンドを実行：

```bash
# リモート追加
git remote add origin https://github.com/YOUR_USERNAME/luna-hp.git

# ブランチ名確認（既に main なので不要）
git branch -M main

# Push
git push -u origin main
```

### 確認

```bash
git remote -v
# origin  https://github.com/YOUR_USERNAME/luna-hp.git (fetch)
# origin  https://github.com/YOUR_USERNAME/luna-hp.git (push)
```

---

## ✨ 完了

GitHub リポジトリに以下のファイルが Push されます：

```
luna-hp/
├── README.md              ✅
├── SETUP.md               ✅
├── GITHUB-SETUP.md        ✅
├── index.html             ✅
├── privacy.html           ✅
├── style.css              ✅
├── hearing-sheet.md       ✅
├── hearing-sheet-line.txt ✅
└── .gitignore             ✅
```

---

## 🔄 今後の更新フロー

```bash
# 変更をコミット
git add .
git commit -m "update: 説明"

# GitHub に Push
git push origin main
```

→ Cloudflare Pages は GitHub 連携しているため、**自動的にデプロイされます** 🚀

---

## 📖 次のステップ

✅ **Step 1 完了**: GitHub リポジトリ作成

➡️ **Step 2**: Cloudflare Registrar でドメイン取得
- https://dash.cloudflare.com → **Registrar**
- `md-luna.com` 取得

---

**参考**: GitHub にアカウントがない場合  
→ https://github.com/signup でサインアップ

