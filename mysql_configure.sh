#$1 => the c9 username
#$2 => the application name to load and configure
#echo "Setting password for mysql root user..."
#mysql SET @mysql_user = $1; \. CloudDeploymentManager/mysql_password_change.sql
echo "Executing the database initialization..."
PROJECT_NAME=$2
echo $PROJECT_NAME
DB_INIT_SH=$PROJECT_NAME"/Database/Scripts"
echo "Database shell script is found in "$DB_INIT_SH
chmod +x $DB_INIT_SH/db_init_on_server.sh
sh $DB_INIT_SH/db_init_on_server.sh