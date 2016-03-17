##############################
## Git Easy                 ##
##
## $1 => the commit comment ##
##############################
vendor/bin/phpunit
git add -A
git commit -m "$1"
git push