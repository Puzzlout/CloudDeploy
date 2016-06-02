#$1 dev or prod
composer update
php bin/console cache:clear --env=$1
php bin/console asset:install --symlink