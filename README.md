# README
railsのセットアップ 

## 環境
ruby 2.7.2
rails 7.0.4
mysql 5.7

## Setup

```
export DOCKER_SCAN_SUGGEST=false
```

```
docker-compose build
```
完了後

```
docker-compose up
```

`http://localhost:3000`を確認

## QAメモ
- コマンドを使ってデータベースを作成したい
`docker ps`を行い`study-db-1`が立ち上がっていることを確認する
立ち上がっていない場合は、`docker-compose up db`などをすると立ち上がる
`docker-compose run web rails db:create`をうつ

- コマンドを使ってテーブルを作成したい
`docker ps`を行い`study-db-1`が立ち上がっていることを確認する
立ち上がっていない場合は、`docker-compose up db`などをすると立ち上がる
`docker-compose run web rails db:migrate`をうつ
