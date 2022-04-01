cd /home/ec2-user
sudo yum update
sudo yum install ruby -y
sudo yum install wget
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install 
sudo ./install auto
sudo service codedeploy-agent start
sudo service codedeploy-agent status


cd /home/ec2-user/webservice/DjangoAPI
# echo "77777777777777777777777777777"
sudo python3 manage.py makemigrations
sudo python3 manage.py migrate
# sudo python manage.py runserver


# sudo python3 manage.py makemigrations
# sudo python3 manage.py migrate
echo "1111111111111Start to install dependencies, current time is:"  `date`
sudo python3 manage.py runserver 0.0.0.0:8000
echo "2222222"
