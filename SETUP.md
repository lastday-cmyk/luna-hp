# Luna HP — セットアップ・デプロイメント手順

## 📋 概要
株式会社 Maison de Luna のコーポレートサイト制作・運用ガイド。
静的HTML/CSS構成で、Cloudflare Pages経由でデプロイ。

---

## ✅ 現状

### 成果物（完了）
- ✅ `index.html` — メインページ（Hero / About / Company / Contact）
- ✅ `privacy.html` — プライバシーポリシー
- ✅ `style.css` — レスポンシブスタイルシート（768px breakpoint）
- ✅ `hearing-sheet.md` — クライアント向けヒアリングシート（Markdown版）
- ✅ `hearing-sheet-line.txt` — LINE Note用（プレーンテキスト版）

### ドメイン・メール
- 🎯 **ドメイン**: `md-luna.com` （.com）
- 📧 **メール**: `info@md-luna.com` （Google Workspace経由）

### デザイン
- 🎨 **カラー**: Monotone（黒/白/グレー）
- 📐 **レイアウト**: Fixed Header + Hero Full-height + Grid-based About + Info Table
- 📱 **レスポンシブ**: Desktop / Mobile（768px breakpoint）
- ✨ **フォント**: Inter (English) + Noto Sans JP (Japanese, weight 300)

---

## 🚀 デプロイメント手順

### Step 1: GitHub リポジトリ作成

```bash
# ローカルリポジトリ初期化
cd /Users/pfab/ai-management/03_projects/luna
git init
git add .
git commit -m "feat: Maison de Luna HP 初版作成"

# GitHub リモート追加（既にリモートがあれば不要）
git remote add origin https://github.com/YOUR_USERNAME/luna-hp.git
git branch -M main
git push -u origin main
```

**リポジトリ設定**:
- `.gitignore` — 不要（静的サイトなので依存なし）
- `README.md` — 追加推奨（クライアント向けドキュメント）

---

### Step 2: Cloudflare Registrar でドメイン取得

#### 2-1. Cloudflare アカウント確認
- https://dash.cloudflare.com にログイン
- ダッシュボード左メニュー → **Registrar**

#### 2-2. ドメイン登録
1. **Register Domain** をクリック
2. `md-luna.com` を入力 → **検索**
3. ✅ **Available** 確認 → **Add to cart**
4. **Checkout** → 支払い完了
   - **期間**: 1年（自動更新ON推奨）
   - **WHOIS Privacy**: ON（デフォルト）
   - **料金**: 約¥1,400/年

#### 2-3. ネームサーバー確認
- 登録後、自動的に Cloudflare ネームサーバーが設定される
  ```
  ns1.cloudflare.com
  ns2.cloudflare.com
  ```

---

### Step 3: Cloudflare Pages で静的サイトをデプロイ

#### 3-1. Pages プロジェクト作成
1. Cloudflare ダッシュボード → **Pages**
2. **Create a project** → **Connect to Git**
3. GitHub アカウント連携 → `luna-hp` リポジトリ選択
4. **Build settings**:
   - **Framework**: None
   - **Build command**: （なし）
   - **Build output directory**: `/`（ルート）
5. **Environment variables**: （なし）
6. **Deploy** ボタン

#### 3-2. デプロイ確認
- デプロイ完了後、プレビューURL が発行される
  ```
  https://luna-hp.pages.dev
  ```
- **動作確認** (全デバイス):
  - ✅ Hero セクション表示
  - ✅ Navigation リンク動作（About / Company / Contact へスムーズスクロール）
  - ✅ Contact フォーム表示
  - ✅ Privacy Policy リンク動作
  - ✅ モバイル表示（iPhone / Android）

---

### Step 4: カスタムドメイン接続

#### 4-1. Pages に独自ドメイン追加
1. Pages プロジェクト → **Settings**
2. **Custom domains**
3. **Add custom domain**
4. `md-luna.com` を入力 → **Continue**
5. **Confirm domain ownership** → **Activate domain**

#### 4-2. SSL 証明書確認
- 自動的に Cloudflare Managed SSL が設定される
- https://md-luna.com で HTTPS アクセス可能に

#### 4-3. DNS レコード確認（Cloudflare DNS タブ）
```
Type    Name           Content              Proxied
CNAME   md-luna.com    luna-hp.pages.dev    ☑ Proxied
```

---

### Step 5: Google Workspace セットアップ

#### 5-1. Google Workspace 契約
- https://workspace.google.com にアクセス
- **プランを選択**: Business Starter ¥680/月
- **ドメイン**: `md-luna.com`
- **ユーザー数**: 1（info）

#### 5-2. MX レコード設定（Cloudflare DNS）
Google Workspace から提供される MX レコードを Cloudflare DNS に追加:

```
Type   Priority  Name              Content
MX     5         md-luna.com       aspmx.l.google.com
MX     10        md-luna.com       alt1.aspmx.l.google.com
MX     20        md-luna.com       alt2.aspmx.l.google.com
MX     30        md-luna.com       alt3.aspmx.l.google.com
MX     40        md-luna.com       alt4.aspmx.l.google.com

TXT    —         md-luna.com       v=spf1 include:_spf.google.com ~all
TXT    —         default._domainkey md-luna.com  v=DKIM1; k=rsa; ...（Google が提供）
```

#### 5-3. Gmail アカウント確認
- https://mail.google.com
- ログイン: `info@md-luna.com`
- 送受信テスト実施

---

### Step 6: Contact Form メール通知 設定

#### 方法 A: Formspree（推奨・最シンプル）
```html
<!-- index.html contact-email の下に追加 -->
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
  <input type="text" name="name" placeholder="お名前" required>
  <input type="email" name="email" placeholder="メールアドレス" required>
  <textarea name="message" placeholder="メッセージ" required></textarea>
  <button type="submit">送信</button>
</form>
```

**セットアップ**:
1. https://formspree.io にアクセス
2. メールアドレス: `info@md-luna.com`
3. フォーム作成 → Form ID 取得
4. フォーム送信時自動的に `info@md-luna.com` に通知

#### 方法 B: Cloudflare Workers（高度・カスタマイズ可）
- サーバーレス関数で POST を処理
- Google Workspace SMTP経由でメール送信
- 詳細: `/scripts/luna-contact-worker.js` （後日作成）

---

### Step 7: ロゴ・OGP 画像 追加

#### 7-1. ロゴファイル
```
📁 03_projects/luna/
  └── assets/
      └── logo.png（透明背景 / 512x512px以上推奨）
```

#### 7-2. index.html ロゴ表示
```html
<header class="header">
  <div class="header__inner">
    <a href="/" class="header__logo">
      <img src="assets/logo.png" alt="Maison de Luna" class="header__logo-image">
    </a>
    ...
  </div>
</header>
```

#### 7-3. style.css ロゴスタイル
```css
.header__logo-image {
  height: 32px;
  width: auto;
}
```

#### 7-4. OGP 画像
```html
<!-- index.html <head> に追加 -->
<meta property="og:image" content="https://md-luna.com/assets/og-image.png">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
```

**ファイル**: 
- `assets/og-image.png` （1200x630px / RGB）

---

### Step 8: 会社情報入力

#### 8-1. index.html Company セクション更新
```html
<!-- 現状: 所在地・電話番号が「—」 -->
<!-- 下記をクライアント確認後更新 -->
<tr>
  <th>所在地</th>
  <td>東京都渋谷区... <!-- クライアント住所 --></td>
</tr>
<tr>
  <th>電話番号</th>
  <td>03-XXXX-XXXX</td>
</tr>
```

---

## 🧪 テスト・QA チェックリスト

### 機能テスト
- [ ] Hero セクション表示OK（Full-height / 背景グラデーション）
- [ ] Navigation スムーズスクロール OK（About / Company / Contact）
- [ ] About Grid 表示 OK（デスクトップ 3列 / モバイル 1列）
- [ ] Contact メール送信 OK（受信確認）
- [ ] Privacy Policy ページ表示 OK（noindex メタタグ確認）
- [ ] Footer リンク動作 OK

### レスポンシブテスト
- [ ] PC (1024px以上): 全レイアウト正常
- [ ] タブレット (768px〜1023px): Grid → 1列変換OK
- [ ] モバイル (320px〜767px): フォント・パディング調整OK
- [ ] iPhone 14 Pro Max: 表示OK
- [ ] Android: 表示OK

### SEO・アクセシビリティ
- [ ] meta description 設定 OK
- [ ] og:title / og:description / og:url 設定 OK
- [ ] og:image 設定OK（ロゴ完成後）
- [ ] lang="ja" 属性設定 OK
- [ ] aria-label="Primary" ナビゲーション OK
- [ ] Lighthouse スコア: Performance 90+, Accessibility 95+

### セキュリティ
- [ ] HTTPS 接続 OK（Cloudflare SSL）
- [ ] Privacy Policy ページ noindex 確認
- [ ] WAF 有効（Cloudflare デフォルト有効）

### メール
- [ ] Google Workspace ログイン OK
- [ ] `info@md-luna.com` 送信テスト OK
- [ ] `info@md-luna.com` 受信テスト OK
- [ ] Contact Form → メール通知 OK

---

## 📊 月額費用

| 項目 | 費用 |
|------|------|
| ドメイン（.com） | ¥117/月（年¥1,400） |
| Google Workspace（1ユーザー） | ¥680/月 |
| Cloudflare Pages | ¥0 |
| Cloudflare Registrar | ¥0 |
| **合計** | **約¥800/月** |

---

## 🔄 運用・メンテナンス

### 定期更新
- **会社情報**: 変更時に `index.html` を直接編集 → GitHub push → 自動デプロイ
- **Privacy Policy**: 法令改正時に `privacy.html` 更新
- **ロゴ・画像**: `assets/` フォルダに追加

### ドメイン更新
- **更新期限**: 自動更新 ON で継続
- **MX レコード**: 期限切れ前に Google Workspace 更新

### バックアップ
- GitHub で全履歴管理
- 本番 URL: https://md-luna.com
- ステージング: https://luna-hp.pages.dev

---

## 📞 サポート連絡先

### Cloudflare トラブル
- https://dash.cloudflare.com → **Support** → チケット作成

### Google Workspace 契約・メール
- https://admin.google.com → **Support** → チャット

### GitHub デプロイ問題
- GitHub Actions ログ確認: Pages プロジェクト → **Deployments**

---

## ✨ 次のステップ（オプション）

### 短期
1. [ ] Sitemap.xml 生成 → `robots.txt` 追加
2. [ ] Google Search Console 登録
3. [ ] Google Analytics 実装（クリック測定・ユーザー行動分析）
4. [ ] Twitter / LINE OGP 共有テスト

### 中期
5. [ ] Contact Form → Slack 通知連携
6. [ ] お問い合わせ自動返信メール実装
7. [ ] クライアント管理画面（複数ユーザー化）
8. [ ] ブログセクション追加（news.md）

---

**最終チェック日**: 2026-04-16  
**ステータス**: 🟢 デプロイ準備完了
