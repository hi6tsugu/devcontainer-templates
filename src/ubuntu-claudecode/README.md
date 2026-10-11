# Ubuntu + Claude Code

Ubuntu をベースに Claude Code を利用できるようにした Dev Container のテンプレート。

- Git フックは `.githooks` に配置
- 環境変数は `.env` に記述
  - 変更をコンテナーに反映させるにはコンテナーのリビルドが必要
  - 存在する前提の設定になっているので、不要な場合も必ず配置
