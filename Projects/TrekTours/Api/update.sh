################################################################################
#
# Input $1: dev or prod
# Input $2: the git tag to release
# Input $3: full absolute path to directory
# Input $4: use local composer.phar => 0 (false) or 1 (true)
################################################################################

cd $3/api
rm -R var/cache
rm -R var/sessions
rm var/bootstrap.php.cache
git reset --hard HEAD
git pull
git checkout tags/$2 -b v$2
if [ $4 = "1" ]
then
    sh/composer.phar update
else
    composer update
fi
php bin/console cache:clear --env=$1
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:schema:update --force
php bin/console assets:install --env=$1 --symlink
php bin/console cache:warmup --env=$1