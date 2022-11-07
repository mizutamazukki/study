# README
railsのセットアップ 

## 環境
- ruby 2.7.2
- rails 7.0.4
- mysql 5.7
- phpmyadmin
## Setup

```
<!-- 開発環境のみで -->
# 脆弱性が見つかるとbuildしてくれないのでfalseにしておく
# エラー内容 Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
export DOCKER_SCAN_SUGGEST=false

docker-compose build

docker-compose up
```

`http://localhost:3000`を確認

## phpmyadmin
ログイン方法
- user: root
- `MYSQL_ROOT_PASSWORD`参照

`localhost:4040`アクセス

## QAメモ
コマンドを使ってデータベースを作成したい

`docker ps`を行い`study-db-1`が立ち上がっていることを確認する

立ち上がっていない場合は、`docker-compose up db`などをすると立ち上がる
`docker-compose run web rails db:create`をうつ

コマンドを使ってテーブルを作成したい
`docker ps`を行い`study-db-1`が立ち上がっていることを確認する

立ち上がっていない場合は、`docker-compose up db`などをすると立ち上がる
`docker-compose run web rails db:migrate`をうつ
