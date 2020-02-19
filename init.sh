# Create .env file for use by docker-compose.yml

echo Let\'s set up the .env file.;

# Create MySQL credentials

echo What is the MySQL root password?;

read MYSQL_ROOT_PASSWORD;

echo Who is the MySQL user?;

read MYSQL_USER;

echo What is the MySQL user\'s password?;

read MYSQL_USER_PASSWORD;

echo What is the name of the database?;

read DATABASE_NAME;

# Set up .env file

touch .env;

echo "
# service: mysql db
MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
MYSQL_DATABASE=$DATABASE_NAME
MYSQL_USER=$MYSQL_USER
MYSQL_PASSWORD=$MYSQL_USER_PASSWORD
" > .env

echo .env file created;
