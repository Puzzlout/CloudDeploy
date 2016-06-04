#$1 dev or prod
rm -R var/cache
rm -R var/sessions
rm var/bootstrap.php.cache
composer update
php bin/console cache:clear --env=$1
php bin/console asset:install --symlink