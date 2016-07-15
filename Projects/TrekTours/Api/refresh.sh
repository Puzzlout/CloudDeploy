#$1 dev or prod
cd ~/workspace/api/
rm -R var/cache
rm -R var/sessions
rm var/bootstrap.php.cache
git pull
mysql-ctl start
composer update
php bin/console cache:clear --env=$1
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:schema:update --force
php bin/console assets:install --env=$1 --symlink
php bin/console cache:warmup --env=$1