# learn-postgreSQL

```
vagrant up --provision
```

# ユーザーと DB を作成する

```
# rootユーザー以外でDBにアクセスできるようにする

# user作成
createuser --interactive sample_user

# testdb作成とオーナーをuserにする
createdb -O sample_user pdadmin

```

# ユーザー設定を行う

```
# testdbにログイン
psql pgadmin
```
