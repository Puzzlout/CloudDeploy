#$1 => the github username
#$2 => the application names to load and configure
export IFS=";"
repos=${$2//;/$'\n'}
for repository in $repos; do
    echo "git clone https://github.com/$1/$repository.git"
done