echo "Start to install dependencies, current time is:"  `date`
sudo yum -y update
cd /home/ec2-user/




cd /home/ec2-user
sudo yum update
sudo yum install ruby -y
sudo yum install wget
wget https://aws-codedeploy-us-east-2.s3.us-east-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
sudo service codedeploy-agent status

wget https://s3.amazonaws.com/amazoncloudwatch-agent/centos/amd64/latest/amazon-cloudwatch-agent.rpm
sudo rpm -U ./amazon-cloudwatch-agent.rpm

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
    -a fetch-config \
    -m ec2 \
    -c file:/home/ec2-user/cloudwatch-config.json \
    -s


# Python dependencies
# sudo yum -y install epel-release
sudo yum install -y python3
sudo yum install -y python3-pip


# =================================
# sudo wget https://repo.mysql.com//mysql80-community-release-el7-3.noarch.rpm

# # 安装rpm
# sudo rpm -Uvh mysql80-community-release-el7-3.noarch.rpm
# # sudo sed -i 's/enabled=1/enabled=0/' /etc/yum.repos.d/mysql-community.repo
# sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
# # sudo yum --enablerepo=mysql80-community install mysql-community-server


# # yum 安装mysql服务
# sudo yum install -y mysql-community-server
# sudo systemctl enable mysqld.service
# # 启动mysql服务
# sudo systemctl start mysqld.service

# # 查看mysql服务状态
# sudo systemctl status mysqld.service

# # 查看安装的mysql密码
# sudo grep 'temporary password' /var/log/mysqld.log
# TEMP_PWD=$(sudo grep 'temporary password' /var/log/mysqld.log)
# PWD=${TEMP_PWD##* }
# sudo mysqladmin -uroot -p${PWD} password Huawei12#$

# sudo mysql -uroot -pHuawei12#$ <<EOF
# create database login_signup character set utf8;
# EOF
# ==============================


sudo yum install -y unzip
unzip webservice.zip
cd /home/ec2-user/webservice
ls -a


sudo pip3 install -r requirements.txt
sudo pip3 install pymysql



# cd /home/ec2-user/




# cd /home/ec2-user/webservice/DjangoAPI
# sudo python3 manage.py makemigrations
# sudo python3 manage.py migrate
cd /home/ec2-user/


ls -a
# webservice
sudo cp webservice.service /usr/lib/systemd/system
echo "5555555555555555555"
sudo systemctl daemon-reload
echo "666666666666666666665"
sudo systemctl enable webservice.service
echo "7777777777777777777775"
sudo systemctl start webservice.service
# sudo systemctl stop webservice.service

