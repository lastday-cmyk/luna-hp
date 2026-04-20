# Step 5: Google Workspace セットアップ

## 📋 概要

| 項目 | 内容 |
|------|------|
| **プラン** | Business Starter |
| **費用** | ¥680/月（税抜） |
| **ユーザー数** | 1（`info@md-luna.com`） |
| **機能** | Gmail・カレンダー・ドライブ・ドキュメント |
| **スケーラビリティ** | 後から複数ユーザー追加可能 |

---

## 🚀 Step 5-1: Google Workspace 契約

### 5-1-1. Google Workspace にアクセス
- **URL**: https://workspace.google.com

### 5-1-2. プランを選択
1. **Business Starter** を選択
   - 価格: ¥680/月
   - ストレージ: 30 GB（ユーザーあたり）
   - サポート: メール・オンライン（十分）

2. **ユーザー数**: 1（`info` だけ）
   - 将来追加可能

### 5-1-3. ドメインを入力
```
ドメイン: md-luna.com
```

✅ Cloudflare Registrar で取得済みなら、所有権が自動確認される場合があります

### 5-1-4. ユーザー情報を入力
```
ユーザー名: info
パスワード: （強力なパスワードを設定）
```

### 5-1-5. 支払い情報
- クレジットカード / PayPal で支払い完了

✅ 数分以内にセットアップメールが届きます

---

## 🎯 Step 5-2: MX レコード設定（Cloudflare DNS）

Google Workspace から以下の MX レコード情報が提供されます。

### 5-2-1. Cloudflare DNS を開く
1. **Cloudflare ダッシュボード** → https://dash.cloudflare.com
2. ドメイン選択: **md-luna.com**
3. **DNS** タブ

### 5-2-2. MX レコード追加

以下の 5 つのレコードを追加してください：

```
Type    Priority  Name            Content
MX      5         md-luna.com     aspmx.l.google.com
MX      10        md-luna.com     alt1.aspmx.l.google.com
MX      20        md-luna.com     alt2.aspmx.l.google.com
MX      30        md-luna.com     alt3.aspmx.l.google.com
MX      40        md-luna.com     alt4.aspmx.l.google.com
```

### 5-2-3. SPF レコード追加

```
Type    Name            Content
TXT     md-luna.com     v=spf1 include:_spf.google.com ~all
```

### 5-2-4. DKIM レコード追加

Google Workspace 管理画面で DKIM キーが表示されます：

```
Type    Name                            Content
TXT     default._domainkey.md-luna.com  v=DKIM1; k=rsa; p=...（Google が提供）
```

**設定手順**:
1. Google Workspace Admin Console → セキュリティ → DKIM 認証
2. ドメイン: `md-luna.com` を選択
3. **DKIM を有効にする** をクリック
4. 提供されたレコードを Cloudflare DNS に追加

---

## ✅ Step 5-3: Gmail アカウント確認

### 5-3-1. Gmail にログイン
- **URL**: https://mail.google.com
- **メールアドレス**: `info@md-luna.com`
- **パスワード**: Step 5-1-4 で設定したパスワード

### 5-3-2. 送受信テスト
```bash
# テストメール送信
【送信先】: あなたのメールアドレス
【件名】: テスト送信
【本文】: Google Workspace メール設定確認

# 受信確認
あなたのメールアドレスから `info@md-luna.com` にテストメール送信 → 受信確認
```

✅ 送受信の両方が確認できれば OK

---

## 📍 次のステップ: Step 6

**Contact Form メール通知設定**

```html
<!-- index.html の contact-email 下に追加 -->
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
  <input type="text" name="name" placeholder="お名前" required>
  <input type="email" name="email" placeholder="メールアドレス" required>
  <textarea name="message" placeholder="メッセージ" required></textarea>
  <button type="submit">送信</button>
</form>
```

### Formspree セットアップ
1. **URL**: https://formspree.io
2. メールアドレス: `info@md-luna.com`
3. フォーム作成 → Form ID 取得（`f_xxxxxx`）
4. フォーム送信時に自動的に `info@md-luna.com` に通知

---

## 💰 月額費用（確定）

| 項目 | 費用 |
|------|------|
| ドメイン（.com） | ¥117/月（年¥1,400） |
| Google Workspace（1ユーザー） | ¥680/月 |
| **合計** | **¥797/月** |

Cloudflare Pages / Registrar は無料

---

## 🔄 Google Workspace の拡張（オプション）

将来、複数ユーザーが必要な場合：

```
追加ユーザー: 1 ユーザーあたり +¥680/月

例）
- info@md-luna.com （営業）: ¥680/月
- sales@md-luna.com （営業2）: +¥680/月
- admin@md-luna.com （管理）: +¥680/月
→ 合計: ¥2,040/月
```

Admin Console で いつでも追加可能

---

**最終チェック日**: 2026-04-16  
**ステータス**: 🟡 Google Workspace 契約待ち
