# README
EC-CUBE 2.11 on Docker

## Description
EC-CUBE 2.11.5 をDocker上で稼働する環境です。

## Requirements
-   Docker
-   docker-compose

## Contents
-   PHP 5.6
-   MySQL 5.7
-   EC-CUBE 2.11.5

## Install & usage
### ダウンロード
```
$ git clone git@github.com:logicheart/eccube211-docker.git
$ mv eccube211-docker my-eccube
```

### 環境変数
環境変数ファイル .envを作成します。パスワード等の値は任意に変更できます。

```
$ cd my-eccube
$ cp .env.sample .env
$ vi .env
MYSQL_RANDOM_ROOT_PASSWORD=yes
MYSQL_DATABASE=eccube_db
MYSQL_USER=eccube_db_user
MYSQL_PASSWORD=eccubepassword
```

### Dockerビルド ＆ 起動
```
$ docker-compose build
$ docker-compose up
```

### EC-CUBE初期設定
<http://localhost> にアクセスすると、EC-CUBEの初期設定（インストール）画面が表示されます。環境設定ファイルに記述した値を元に入力します。

#### ECサイトの設定

設定項目|値|備考
--|--|--
HTMLパス|/var/www/html |
URL（通常）|<http://localhost>|
URL（セキュア）|<https://localhost>|

#### データベースの設定

設定項目|値|備考
--|--|--
DBの種類|MySQL|
DBサーバー|mysql|デフォルト"localhost"より必ず変更すること
ポート|3306|
DB名|eccube_db（環境変数MYSQL_DATABASE）|
DBユーザ|eccube_db_user（環境変数MYSQL_USER）|
DBパスワード|eccubepassword（環境変数MYSQL_PASSWORD）|

## Author
hiroyasu55 <https://github.com/hiroyasu55>

## License
MIT
