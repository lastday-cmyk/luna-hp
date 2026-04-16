# 🌍 Maison de Luna — Corporate Website

> **Bridging Markets, Creating Value.**  
> 国際貿易・輸出入業務をサポートするコーポレートサイト

---

## 📖 プロジェクト概要

**企業名**: 株式会社 Maison de Luna Ltd.  
**ドメイン**: https://md-luna.com  
**目的**: 企業認知・信頼構築  
**言語**: 日本語 / 英語（一部）

### サイト構成
- **トップページ** (`index.html`) — Hero / サービス紹介 / 会社概要 / お問い合わせ
- **プライバシーポリシー** (`privacy.html`) — 個人情報取り扱い方針
- **スタイル** (`style.css`) — レスポンシブデザイン（Desktop / Mobile）

---

## 🎯 特徴

✨ **モダンで洗練されたデザイン**
- Monotone（黒/白/グレー）色使い
- 高級感・グローバル感重視
- Inter / Noto Sans JP フォント（Font weight 300）

📱 **完全レスポンシブ対応**
- デスクトップ / タブレット / モバイル
- 768px ブレークポイント
- 固定ヘッダー + スムーズスクロール

🔒 **セキュリティ・パフォーマンス重視**
- Cloudflare Pages（自動SSL / CDN / WAF）
- 静的HTML（ビルド不要）
- 高速読み込み（Lighthouse 90+ スコア）

💼 **ビジネス機能完備**
- お問い合わせフォーム（Formspree経由）
- Google Workspace メール（info@md-luna.com）
- OGP タグ設定（SNS共有対応）

---

## 🚀 クイックスタート

### 1. ローカル確認

```bash
# リポジトリクローン
git clone https://github.com/YOUR_USERNAME/luna-hp.git
cd luna-hp

# ローカルサーバーで確認（任意）
python3 -m http.server 8000
# ブラウザで http://localhost:8000 にアクセス
```

### 2. GitHub に Push

```bash
# 変更をコミット
git add .
git commit -m "feat: 初版デプロイ"

# Push
git push origin main
```

### 3. Cloudflare Pages でデプロイ

詳細は **[SETUP.md](SETUP.md)** を参照  
→ Pages プロジェクト作成 → GitHub 連携 → 自動デプロイ

### 4. メール設定

**Google Workspace** セットアップ後：
```bash
# メール送受信テスト
info@md-luna.com でログイン → テスト送信
```

詳細は **[SETUP.md Step 5](SETUP.md#step-5-google-workspace-セットアップ)** を参照

---

## 📁 ファイル構成

```
📦 luna-hp/
├── 📄 index.html              # メインページ
├── 📄 privacy.html            # プライバシーポリシー
├── 📄 style.css               # レスポンシブスタイル
├── 📄 README.md               # このファイル
├── 📄 SETUP.md                # デプロイ・セットアップ手順書
├── 📄 hearing-sheet.md        # ヒアリングシート（Markdown版）
├── 📄 hearing-sheet-line.txt  # ヒアリングシート（LINE Note用）
└── 📁 assets/                 # ロゴ・OGP画像等
    ├── logo.png               # ロゴ画像（512x512px推奨）
    └── og-image.png           # OGP画像（1200x630px）
```

---

## 🎨 デザインガイドライン

### カラーパレット

| 色 | 16進数 | 用途 |
|----|--------|------|
| Black | `#000` | 背景・テキスト（高強調） |
| White | `#fff` | 背景（Hero他） |
| Dark Gray | `#1a1a1a` | テキスト本文 |
| Medium Gray | `#555` / `#888` | サブテキスト |
| Light Gray | `#f5f5f5` | セクション背景 |

### タイポグラフィ

| 要素 | フォント | サイズ | 太さ |
|------|---------|--------|------|
| 見出し（H1） | Inter | clamp(2.5rem, 6vw, 4.5rem) | 300 |
| 見出し（H2） | Inter / Noto Sans JP | 1.75rem | 300 |
| 本文 | Noto Sans JP | 0.9375rem | 300 |
| ラベル | Inter | 0.6875rem | 400 |

### 間隔・レイアウト

- **Fixed Header 高さ**: 64px (Mobile: 56px)
- **セクションパディング**: 120px（上下）/ 32px（左右） → Mobile: 80px / 20px
- **Grid ギャップ**: 48px（About Cards）
- **スムーズスクロール**: `scroll-margin-top: 72px`

---

## 🔧 開発

### 技術スタック

| 項目 | 選択 | 理由 |
|------|------|------|
| ビルドツール | なし | 1-3ページなら静的HTML が最適 |
| フレームワーク | なし | Vanilla HTML/CSS で実装 |
| ホスティング | Cloudflare Pages | 無料・自動SSL・高速CDN |
| ドメイン | Cloudflare Registrar | 一元管理・DNS設定簡単 |
| メール | Google Workspace | 独自ドメイン・複数ユーザー対応 |
| フォーム | Formspree | シンプル・無料（月50件） |

### コーディング基準

**HTML**
- Semantic HTML5 使用
- lang="ja" 属性設定
- メタタグ完備（og: / Twitter Card等）
- アクセシビリティ重視（aria-label等）

**CSS**
- Mobile-First アプローチ
- CSS Grid / Flexbox 使用
- 単位: rem（フォント）/ px（レイアウト）
- 色コード: 16進数カラー

**パフォーマンス**
- 画像最適化（WebP推奨 / フォールバック PNG）
- Font Face: Google Fonts CDN
- CSS: 1ファイル統合（HTTP リクエスト最小化）

---

## 📊 月額費用

| 項目 | 費用 |
|------|------|
| ドメイン（.com） | ¥117/月（年¥1,400） |
| Google Workspace（1ユーザー） | ¥680/月 |
| **合計** | **¥797/月** |

*Cloudflare Pages / Registrar は無料*

---

## 🧪 テスト・デプロイチェック

### 本番公開前の確認事項

- [ ] **機能テスト**: Navigation / Contact Form / Links 全動作確認
- [ ] **レスポンシブ**: PC / Tablet / Mobile 表示確認
- [ ] **SEO**: meta tags / Lighthouse / Google Search Console 登録
- [ ] **メール**: Google Workspace 送受信確認
- [ ] **SSL**: HTTPS 接続確認
- [ ] **パフォーマンス**: Lighthouse スコア 90+ 以上
- [ ] **ブラウザ互換性**: Chrome / Safari / Firefox 確認

詳細は **[SETUP.md Step 8](SETUP.md#-テストqa-チェックリスト)** を参照

---

## 🔄 メンテナンス・更新

### 会社情報更新
```html
<!-- index.html Company セクション -->
<tr>
  <th>所在地</th>
  <td>東京都...</td> <!-- 編集 -->
</tr>
```

然後 Push:
```bash
git add index.html
git commit -m "update: 会社情報更新"
git push origin main
```

→ 自動的に Cloudflare Pages にデプロイされます

### ロゴ・OGP 画像追加
1. `assets/logo.png` / `assets/og-image.png` を配置
2. HTML タグを追加（既記述）
3. Push して完了

### Privacy Policy 更新
`privacy.html` を直接編集 → Push で反映

---

## 📞 トラブルシューティング

### ドメイン接続できない
- **確認**: Cloudflare DNS に CNAME レコードが設定されているか
- **解決**: Cloudflare ダッシュボード → DNS → `md-luna.com` CNAME を確認

### メール受信できない
- **確認**: Google Workspace MX レコード設定完了か
- **解決**: https://admin.google.com → ドメイン設定 → MX レコード確認

### デプロイが反映されない
- **確認**: GitHub に正しく Push されているか
- **解決**: Cloudflare Pages → Deployments でビルドログ確認

### Lighthouse スコアが低い
- **原因**: 画像最適化不足・フォント遅延
- **解決**: 画像を WebP に変換・Font Subset 活用

---

## 📖 関連ドキュメント

- **[SETUP.md](SETUP.md)** — 詳細なセットアップ・デプロイ手順
- **[hearing-sheet.md](hearing-sheet.md)** — クライアント向けヒアリングシート
- **index.html** — ソースコード内の HTML コメント参照

---

## 📝 ライセンス

このプロジェクトは非公開です。  
著作権: 株式会社 Maison de Luna Ltd.

---

## 🤝 サポート

**デプロイ・インフラ関連**: Cloudflare Support  
**メール・Google Workspace**: Google Workspace Admin Console  
**コード・カスタマイズ**: GitHub Issues

---

**最終更新**: 2026-04-16  
**ステータス**: 🟢 デプロイ準備完了
