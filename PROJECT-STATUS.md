# Luna HP — プロジェクトステータス

**最終更新**: 2026-04-16 20:15  
**ステータス**: 🟡 Step 3 完了 / Step 4-5 準備完了

---

## ✅ 完了したタスク

### Phase 1: 企画・設計（完了）
- [x] ヒアリングシート作成 → `hearing-sheet.md`
- [x] HTML / CSS コーディング完了
- [x] レスポンシブデザイン実装（768px breakpoint）
- [x] meta タグ・OGP タグ設定
- [x] Privacy Policy ページ作成

### Phase 2: インフラ・デプロイ準備（完了）
- [x] GitHub リポジトリ作成・初期化
- [x] ローカル動作テスト ✅
- [x] ドキュメント整備（5 ファイル）

### Phase 3: 本番デプロイ準備中（完了）
- [x] Cloudflare Pages デプロイガイド作成
- [x] ドメイン取得・DNS 設定ガイド作成
- [x] Google Workspace セットアップガイド作成
- [x] Contact Form 統合ガイド作成

---

## 📋 今後のタスク（ロードマップ）

### Step 3: Cloudflare Pages デプロイ（実行済み）
- **状態**: ✅ ガイド完成 / UI でのデプロイ待ち
- **進捗**: ローカルテスト ✅
- **次**: Cloudflare UI で GitHub 連携 → Deploy ボタン
- **結果**: `https://luna-hp.pages.dev` 発行予定

### Step 4: ドメイン取得 + カスタムドメイン接続（準備完了）
- **状態**: 🟡 実行待ち
- **ガイド**: `DOMAIN-SETUP.md` ✅
- **実行内容**:
  1. Cloudflare Registrar で `md-luna.com` 取得（¥1,400/年）
  2. Pages にカスタムドメイン追加
  3. SSL 自動設定・DNS 確認
- **結果**: `https://md-luna.com` で本番公開

### Step 5: Google Workspace セットアップ（準備完了）
- **状態**: 🟡 実行待ち
- **ガイド**: `GOOGLE-WORKSPACE-SETUP.md` ✅
- **実行内容**:
  1. Business Starter プラン契約（¥680/月）
  2. `info@md-luna.com` ユーザー作成
  3. MX・SPF・DKIM レコード設定
  4. 送受信テスト
- **結果**: メール送受信可能に

### Step 6: Contact Form 統合（準備完了）
- **ガイド**: `SETUP.md` Step 6 参照
- **方法**: Formspree（最もシンプル）or Cloudflare Workers
- **結果**: `info@md-luna.com` に自動通知

### Step 7: ロゴ・OGP 画像追加（待機中）
- **ガイド**: `SETUP.md` Step 7 参照
- **必要**: 
  - `logo.png`（512x512px以上、透明背景）
  - `og-image.png`（1200x630px）
- **実装**: `assets/` フォルダに配置

### Step 8: 会社情報入力（クライアント情報待ち）
- **ガイド**: `SETUP.md` Step 8 参照
- **必要情報**:
  - 所在地
  - 電話番号
  - ロゴ・OGP 画像
- **実装**: `index.html` の Company セクション更新

---

## 📂 ドキュメント一覧

| ファイル | 役割 | 状態 |
|---------|------|------|
| `README.md` | プロジェクト概要 | ✅ 完成 |
| `SETUP.md` | 8ステップの詳細デプロイガイド | ✅ 完成 |
| `GITHUB-SETUP.md` | GitHub セットアップ手順 | ✅ 完成 |
| `CLOUDFLARE-DEPLOY.md` | Cloudflare Pages デプロイガイド | ✅ 完成 |
| `DOMAIN-SETUP.md` | ドメイン取得・DNS 設定ガイド | ✅ 完成 |
| `GOOGLE-WORKSPACE-SETUP.md` | Google Workspace セットアップガイド | ✅ 完成 |
| `hearing-sheet.md` | クライアント向けヒアリングシート | ✅ 完成 |
| `hearing-sheet-line.txt` | LINE Note 用（プレーンテキスト） | ✅ 完成 |
| `.gitignore` | Git 除外ファイル設定 | ✅ 完成 |

---

## 💰 月額ランニングコスト

| 項目 | 費用 | 備考 |
|------|------|------|
| **ドメイン（.com）** | ¥117/月 | 年 ¥1,400 |
| **Google Workspace** | ¥680/月 | Business Starter |
| **Cloudflare Pages** | ¥0 | 無料ホスティング |
| **Cloudflare Registrar** | ¥0 | 無料DNS 管理 |
| **合計** | **¥797/月** | 年間約 ¥9,564 |

---

## 🔗 GitHub リポジトリ

```
https://github.com/lastday-cmyk/luna-hp.git
ブランチ: main
最新コミット: docs: Cloudflare Pages & Domain Setup ガイドを追加
```

### ファイル構成
```
luna-hp/
├── 📄 index.html                    # メインページ
├── 📄 privacy.html                  # プライバシーポリシー
├── 📄 style.css                     # レスポンシブスタイル
├── 📄 README.md                     # プロジェクト概要
├── 📄 SETUP.md                      # 8ステップデプロイガイド
├── 📄 GITHUB-SETUP.md               # GitHub セットアップ
├── 📄 CLOUDFLARE-DEPLOY.md          # Pages デプロイガイド
├── 📄 DOMAIN-SETUP.md               # ドメイン設定ガイド
├── 📄 GOOGLE-WORKSPACE-SETUP.md     # Google Workspace ガイド
├── 📄 hearing-sheet.md              # ヒアリングシート
├── 📄 hearing-sheet-line.txt        # LINE Note 版
├── 📄 .gitignore                    # Git 設定
└── 📁 assets/                       # （将来）ロゴ・画像
    └── logo.png                     # （待機中）
    └── og-image.png                 # （待機中）
```

---

## 🚀 次のアクション（推奨順序）

### 【最優先】
1. **Step 3**: Cloudflare Pages デプロイ実行
   - UI で GitHub 連携 → Deploy
   - 確認: `https://luna-hp.pages.dev`

2. **Step 4**: ドメイン取得
   - Cloudflare Registrar で `md-luna.com` 取得
   - Pages にカスタムドメイン追加
   - 確認: `https://md-luna.com`

### 【次優先】
3. **Step 5**: Google Workspace セットアップ
   - Business Starter 契約（¥680/月）
   - `info@md-luna.com` ユーザー作成
   - MX・SPF・DKIM 設定
   - 送受信テスト

4. **Step 6**: Contact Form 統合
   - Formspree セットアップ
   - Form ID 取得 → index.html に埋め込み

### 【後続】
5. **Step 7-8**: ロゴ・会社情報追加
   - クライアント情報待ち
   - ロゴ・OGP 画像取得後に実装

---

## ✨ 完成予定

- **プレビュー**: 本日（2026-04-16）中に `https://luna-hp.pages.dev` 公開可能
- **本番**: Step 4（ドメイン取得）後、`https://md-luna.com` で本番公開
- **メール**: Step 5（Google Workspace）後、`info@md-luna.com` で送受信可能

---

## 📞 サポート

### Cloudflare 関連
- ダッシュボード: https://dash.cloudflare.com
- サポート: Cloudflare Support チャット

### Google Workspace 関連
- Admin Console: https://admin.google.com
- サポート: Google Workspace Support

### GitHub 関連
- リポジトリ: https://github.com/lastday-cmyk/luna-hp
- Issues / Discussions

---

**ステータス**: 🟡 デプロイ準備完了 — 次のアクション待ち  
**担当**: pfab / AI Management  
**最終確認日**: 2026-04-16
