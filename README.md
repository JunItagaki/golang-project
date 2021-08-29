# golang-project

## Introduction

本記述はgoでアプリを作成する際の雛形である。

## Build

```
// 起動
$ docker-compose up -d

// 動作確認
$ docker-compose exec app go run main.go

// 停止
$ docker-compose stop
```

## cmd

```
// ライブラリインストール
$ docker-compose exec app go get ○○

// 例
// インストール
$ docker-compose exec app go get golang.org/x/tools/cmd/godoc
// 確認
$ docker-compose exec app go fmt

```