echo "Setting password for mysql root user..."
mysql .\ mysql_password_change.sql
echo "Executing the database initialization..."
DB_INIT_SH="EasyMvc/Database/Scripts"
echo "Database shell script is found in "$DB_INIT_SH
chmod $DB_INIT_SH/db_init_on_server.sh
sh $DB_INIT_SH/db_init_on_server.sh