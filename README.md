# flutter_basic_01

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


フォルダー構成等
lib/
 ├── main.dart
 ├── config/
 │    ├── router.dart        # 画面遷移（GoRouter など）
 │    └── di.dart            # 依存注入（gRPC Client など）
 ├── core/
 │    ├── constants/         # App名・色・定数
 │    ├── theme/             # ダーク/ライトなど
 │    └── utils/             # 共通関数
 ├── data/
 │    ├── models/            # データ構造（Protobuf生成クラス取得）
 │    ├── grpc/              # gRPC Client実装
 │    └── repositories/      # データ取得ロジック
 ├── domain/
 │    ├── entities/          # ビジネスルール（独立）
 │    └── usecases/          # UIが使うビジネス操作
 ├── presentation/
 │    ├── pages/             # ✅ まずここから作る！
 │    │    ├── home_page.dart
 │    │    ├── add_expense_page.dart
 │    │    └── expense_list_page.dart
 │    ├── widgets/           # 再利用UIパーツ
 │    └── state/             # Riverpod / Bloc / ChangeNotifierなど
 └── generated/              # 🔹Protobufから自動生成


1️⃣ ユーザー関連

ログイン／サインアップ画面
→ メール・パスワードで認証

プロフィール編集画面
→ 名前やメールアドレスの変更

2️⃣ カテゴリ管理

カテゴリ一覧画面
→ 食費、交通費などの一覧

カテゴリ追加／編集／削除画面

3️⃣ 取引管理

取引一覧画面
→ 月ごと・カテゴリごとに絞り込み

取引追加／編集／削除画面
→ 日付、金額、カテゴリ、メモなどを入力

残高表示
→ 総残高やカテゴリごとの残高

4️⃣ 予算管理

月予算一覧画面
→ カテゴリ別の月予算表示

予算追加／編集／削除画面

5️⃣ レポート・分析（簡易版）

月次収支グラフ
→ 円グラフで支出割合、折れ線グラフで収支推移

カテゴリ別支出比率
