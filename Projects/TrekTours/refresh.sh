#$1 dev or prod
rm -R var/cache
rm -R var/sessions
rm var/bootstrap.php.cache
git pull
composer update
bower update
php bin/console cache:clear --env=$1
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:schema:update --force
php bin/console assetic:dump --env=$1 --no-debug
php bin/console asset:install --symlink