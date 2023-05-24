echo 'start PosregSQL構築'

# update
sudo yum update

# postgres14インストール
sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum install -y postgresql14-server

# postgreSQLの初期設定
sudo /usr/pgsql-14/bin/postgresql-14-setup initdb
sudo systemctl enable postgresql-14
sudo systemctl start postgresql-14
sudo systemctl restart postgresql-14

# postgreSQLの設定に外部接続を許容する
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" /var/lib/pgsql/14/data/postgresql.conf
sudo sh -c "echo 'host    all             all             0.0.0.0/0               md5' >> /var/lib/pgsql/14/data/pg_hba.conf"
sudo systemctl restart postgresql-14

# PostgreSQLユーザーのパスワード変更
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres';"

echo 'start PosregSQL構築終了'