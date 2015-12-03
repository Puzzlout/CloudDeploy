echo "Setting password for mysql root user..."
mysql .\ mysql_password_change.sql
echo "Executing the database initialization..."
PROJECT_NAME=$1
echo $PROJECT_NAME
DB_INIT_SH=$PROJECT_NAME"/Database/Scripts"
echo "Database shell script is found in "$DB_INIT_SH
chmod $DB_INIT_SH/db_init_on_server.sh
sh $DB_INIT_SH/db_init_on_server.sh