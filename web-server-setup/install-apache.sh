✅ Apache Web Server Setup 

sudo yum update -y     # or sudo apt update -y
sudo yum install httpd -y     # or sudo apt install apache2 -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd

Place your files in:

/var/www/html/

Test in browser: http://<your-ec2-ip>

⚙️ Tools & Technologies Used

AWS EC2 (Amazon Linux 2023) – VM for web hosting

Git Bash / WSL – Terminal for running SSH and Git commands on Windows

Apache Web Server – To host a static website

Git + GitHub – Version control and deployment

Bash scripting – Automate install and file deployment

SSH – Secure shell access to remote instance

Security Groups – Firewall rules on AWS

curl / systemctl / chmod – Basic Linux tools for testing and troubleshooting
