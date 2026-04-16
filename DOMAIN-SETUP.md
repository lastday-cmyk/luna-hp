# Step 4-5: ドメイン取得 & カスタムドメイン接続

## 📋 概要

| ステップ | 実施項目 | 費用 | 時間 |
|---------|---------|------|------|
| 4-1 | Cloudflare Registrar でドメイン取得 | ¥1,400/年 | 5分 |
| 4-2 | Cloudflare Pages にカスタムドメイン追加 | ¥0 | 3分 |
| 4-3 | SSL 証明書確認（自動） | ¥0 | 即時 |
| 4-4 | DNS レコード確認 | ¥0 | 2分 |

---

## 🎯 Step 4-1: Cloudflare Registrar でドメイン取得

### 4-1-1. ドメイン検索
1. **Cloudflare ダッシュボード** → https://dash.cloudflare.com
2. 左メニュー → **Domain Registration** → **Registrar**
3. **Register Domain** をクリック
4. ドメイン名を入力: **`md-luna.com`**
5. **検索** をクリック

### 4-1-2. ドメイン確認 & カート追加
- ✅ **Status**: `Available` を確認
- **Add to cart** をクリック
- **Checkout** に進む

### 4-1-3. 登録者情報（仮情報でも OK）
```
登録者名:     （あなたの名前または仮名）
登録者住所:   （あなたの住所または仮住所）
登録者電話:   （あなたの電話または仮電話）
登録者メール: （あなたのメール）

WHOIS Privacy:  ON（デフォルト）
Auto-renewal:   ON（推奨）
```

**後からいつでも修正できます** → Registrar → Manage → Registrant Information → Edit

### 4-1-4. 支払い完了
- **支払い方法**: クレジットカード / PayPal
- **料金**: ¥1,400/年（約¥117/月）
- **確認メール**: 数分以内に届く

✅ 完了後、ネームサーバーが自動設定されます：
```
ns1.cloudflare.com
ns2.cloudflare.com
```

---

## 🎯 Step 4-2: Pages にカスタムドメイン追加

### 4-2-1. Pages プロジェクトを開く
1. **Cloudflare ダッシュボード** → **Pages**
2. **luna-hp** プロジェクトをクリック
3. **Settings** タブ

### 4-2-2. カスタムドメイン追加
1. **Custom domains** セクション
2. **Add custom domain** をクリック
3. ドメイン入力: **`md-luna.com`**
4. **Continue** をクリック

### 4-2-3. ドメイン所有権確認
```
Confirm domain ownership
→ Activate domain
```

✅ 完了で自動的に Cloudflare DNS に CNAME レコードが設定されます

---

## 🎯 Step 4-3: SSL 証明書（自動設定）

Cloudflare が自動的に Managed SSL を設定します：

```
Status: ✅ Active
Certificate: Cloudflare Managed
HTTPS: https://md-luna.com で即座に利用可能
```

確認方法：
```
Pages → luna-hp → Settings → Custom domains → SSL
```

---

## 🎯 Step 4-4: DNS レコード確認

### 確認内容
**Cloudflare ダッシュボード** → **DNS** タブ

```
Type    Name           Content              Proxied
CNAME   md-luna.com    luna-hp.pages.dev    ☑ Proxied
```

✅ 自動設定されているはずです（修正不要）

---

## ✅ デプロイ完了確認

### ブラウザでアクセス
```
https://md-luna.com
```

### 確認項目
- [ ] ページが読み込まれるか
- [ ] HTTPS（鍵マーク）が表示されているか
- [ ] スタイルが正しく適用されているか
- [ ] ナビゲーションが動作するか
- [ ] Contact メールリンクが有効か

---

## 📍 次のステップ: Step 5

**Google Workspace セットアップ** → メール送受信設定

| 項目 | 内容 |
|------|------|
| **プラン** | Business Starter |
| **費用** | ¥680/月 |
| **ユーザー** | 1（info@md-luna.com） |
| **MX レコード** | Cloudflare DNS に追加 |

---

## 💰 月額費用（確定）

| 項目 | 費用 |
|------|------|
| ドメイン（.com） | ¥117/月（年¥1,400） |
| Google Workspace | ¥680/月 |
| Cloudflare Pages | ¥0 |
| Cloudflare Registrar | ¥0 |
| **合計** | **¥797/月** |

---

**最終チェック日**: 2026-04-16  
**ステータス**: 🟡 ドメイン取得待ち
