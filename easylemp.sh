echo "EasyLEMP: Updating apt-get..."
sudo apt-get update
echo "EasyLEMP: Installing nginx..."
sudo apt-get install nginx
echo "EasyLEMP: Installing mysql-server..."
sudo apt-get install mysql-server
echo "EasyLEMP: Installing mysql db..."
sudo mysql_install_db
echo "EasyLEMP: Securing mysql installation..."
sudo mysql_secure_installation
echo "EasyLEMP: Installing php5-fpm..."
sudo apt-get install php5-fpm
echo "EasyLEMP: Installing php5-mysql..."
sudo apt-get install php5-mysql
read -p "EasyLEMP: Press [Enter] to configure php.ini"
sudo nano /etc/php5/fpm/php.ini
echo "EasyLEMP: Restarting php5-fpm..."
sudo service php5-fpm restart
read -p "EasyLEMP: Press [Enter] to configure nginx"
sudo nano /etc/nginx/sites-available/default
echo "EasyLEMP: Restarting nginx..."
sudo service nginx restart
read -p "EasyLEMP: Done. Press [Enter] to finish."