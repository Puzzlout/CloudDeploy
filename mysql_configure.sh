#$1 => the c9 username
#$2 => the application name to load and configure
echo "Setting password for mysql root user:"
echo "SET PASSWORD FOR 'webdevjl'@'%' = PASSWORD('jUL%C9%15');"
echo "Change host from ANY (%) to LOCAL (localhost)"
#mysql SET @mysql_user = $1; \. CloudDeploymentManager/mysql_password_change.sql
#echo "Executing the database initialization..."
#echo "... for project "$2
DB_INIT_FOLDER=$2"/Database/Scripts/"
DB_INIT_SH=$DB_INIT_FOLDER"db_init_on_server.sh"
echo "Database shell script is found in shell script: "$DB_INIT_SH
chmod +x $DB_INIT_SH
sh $DB_INIT_SH $1 $DB_INIT_FOLDER