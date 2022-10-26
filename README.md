# syscal-db
#build Image mysql
sudo docker build -t syscalmysql .

#comprobar Image Mysql
sudo docker images

#run container mysql
sudo docker run -d --name=syscalmysql -p 3306:3306 syscalmysql
