# Input $1: dev or prod
# Input $2: the git tag to release
cd /home/puzzlout/public_html/trektours/api/
rm -R var/cache
rm -R var/sessions
rm var/bootstrap.php.cache
git checkout tags/$2 -b v$2
composer update
php bin/console cache:clear --env=$1
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:schema:update --force
php bin/console assets:install --env=$1 --symlink
php bin/console cache:warmup --env=$1