# Cloudflare Pages デプロイ自動化ガイド

## 📋 前提条件

- ✅ GitHub リポジトリ: https://github.com/lastday-cmyk/luna-hp.git
- ✅ Cloudflare アカウント: https://dash.cloudflare.com
- ✅ GitHub OAuth 認可済み

---

## 🚀 Step 3: Cloudflare Pages デプロイ

### 方法 A: Cloudflare UI での設定（推奨）

#### 3-1. Pages プロジェクト作成
1. **Cloudflare ダッシュボード** → https://dash.cloudflare.com
2. 左メニュー → **Workers & Pages**
3. **Pages** タブ → **Create a project**
4. **Connect to Git** をクリック

#### 3-2. GitHub 連携
1. **GitHub アカウント認可** → OAuth ポップアップで **Authorize**
2. リポジトリ一覧から **`lastday-cmyk/luna-hp`** を選択
3. **Begin setup** をクリック

#### 3-3. ビルド設定
```
Framework preset:       None
Build command:          (空欄のまま)
Build output directory: /
Environment variables:  (なし)
```

#### 3-4. Deploy
**Deploy site** ボタンをクリック

✅ デプロイ完了後、プレビューURL が発行されます：
```
https://luna-hp.pages.dev
```

---

## ✅ デプロイ後の検証

### ローカルテスト確認済み ✓
- Hero セクション表示
- ナビゲーションリンク
- About Grid（3 列レイアウト）
- Company テーブル
- Contact メールリンク
- Privacy Policy リンク

### Cloudflare Pages デプロイ後の確認項目
- [ ] プレビューURL でアクセス可能か
- [ ] 全ページ読み込み正常か
- [ ] CSS が正しく適用されているか
- [ ] JavaScript（スムーズスクロール）が動作するか
- [ ] レスポンシブ表示（モバイル）が正常か
- [ ] Lighthouse スコア確認（Performance 90+）

### Lighthouse 確認方法
1. Chrome DevTools を開く（F12）
2. **Lighthouse** タブ
3. **Analyze page load** をクリック
4. **Performance**, **Accessibility**, **Best Practices** を確認

---

## 🔄 デプロイ後の GitHub 自動デプロイ設定

Cloudflare Pages は GitHub と自動連携済みです。以後：

```bash
# 変更をコミット
git add .
git commit -m "update: 説明"

# GitHub に Push
git push origin main
```

→ **自動的に Cloudflare Pages に反映** 🚀

---

## 📍 次のステップ: Step 4

1. **ドメイン取得** （Cloudflare Registrar で `md-luna.com`）
2. **カスタムドメイン接続** （Pages → Custom Domains）
3. **SSL 証明書確認** （自動設定）
4. **DNS レコード確認** （Cloudflare DNS）

---

## 🐛 トラブルシューティング

### デプロイが失敗する
- **確認**: GitHub に正しく Push されているか
- **解決**: Pages → Deployments でビルドログを確認

### スタイルが反映されない
- **確認**: CSS ファイルのパスが正しいか
- **解決**: `<link rel="stylesheet" href="style.css">` を確認

### 画像が表示されない
- **確認**: 画像ファイルが `/assets/` に存在するか
- **解決**: 相対パス（`./assets/logo.png`）を使用

---

**最終チェック日**: 2026-04-16  
**ステータス**: 🟡 Pages デプロイ待ちPhases
