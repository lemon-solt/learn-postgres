# learn-postgreSQL

```
vagrant up --provision
```

# 環境構築後にユーザーの作成とDBを作成
```
# ssh接続
vagrant ssh

# ルートユーザーでログイン
su -
（password：vagrant）

# postgresユーザーでログイン
su - postgres

# user作成（今回はgwpというユーザー名を指定）
createuser --interactive gwp

# testdb作成とオーナーをuserにする
createdb -O gwp gwp

# psqlモードで作成したユーザーのパスワードを変更する
ALTER USER gwp WITH ENCRYPTED PASSWORD 'gwp';
```

# DBクライアントで接続を試す
```
クライアントは使い慣れているツールで問題無い
[接続情報]
・ユーザー：gwp
・パスワード：gwp
・portは任意だが基本は5432
```


# 指定のDBにログイン
```
psql {DB名}
```
