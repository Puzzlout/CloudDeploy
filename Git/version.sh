##############################
## Git Easy                 ##
##
## $1 => the version number ##
##############################

git add -A
git commit -m "$1"
git tag $1
git push
git push --tags