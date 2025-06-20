📘 AWS EC2 + Git Bash Web Server Project

🚀 Project Overview

This project demonstrates how to:

Launch an EC2 instance on AWS

Connect using Git Bash on Windows

Install Apache Web Server

Deploy a static website using Bash scripts

Designed to showcase core cloud skills like:

EC2 provisioning

Secure SSH access

Linux CLI

Apache setup

GitHub usage for file deployment

🧱 Tools & Technologies

Tool/Tech

Purpose

AWS EC2

Cloud virtual machine

Git Bash (Windows)

SSH + Git workflow

Apache

Host a static website

Git + GitHub

Version control + deployment

Bash Scripting

Automate install + deploy tasks

Linux CLI Tools

curl, chmod, systemctl

Security Groups

AWS firewall configuration

🛠️ Setup Instructions

1. Launch EC2 Instance

AMI: Amazon Linux 2023 (or Ubuntu)

Instance Type: t2.micro (Free Tier)

Key Pair: my-key.pem (Download and store securely)

Security Group: Allow SSH (22) and HTTP (80) inbound

2. Connect with Git Bash (Windows)

chmod 400 /c/Users/kirab/Downloads/my-key.pem
ssh -i "/c/Users/kirab/Downloads/my-key.pem" ubuntu@3.140.197.242

Use ec2-user for Amazon Linux or ubuntu for Ubuntu

3. Install Apache

# Amazon Linux
sudo yum update -y
sudo yum install httpd -y

# Ubuntu
sudo apt update && sudo apt install apache2 -y

sudo systemctl start httpd  # or apache2
sudo systemctl enable httpd

4. Deploy Website from GitHub

git clone https://github.com/Tommy813-lab/aws-ec2-git-bash-demo.git
sudo cp -r aws-ec2-git-bash-demo/web-server-setup/* /var/www/html/
sudo chown -R ec2-user:ec2-user /var/www/html
sudo chmod -R 755 /var/www/html

5. Test in Browser

Navigate to:

http://3.140.197.242

🧠 Troubleshooting Quick Fixes

Issue

Fix Command or Explanation

SSH Permission Denied

chmod 400 key.pem, check correct username/IP

Website Not Loading

Check Apache running, files in /var/www/html/

curl 403/404

Ensure index.html exists, restart Apache

Wrong Key Used

Re-launch EC2 with correct key pair

Security Group blocks traffic

Allow inbound ports 22 (SSH) and 80 (HTTP)

📁 Project Structure

aws-ec2-git-bash-demo/
├── web-server-setup/
│   ├── index.html
│   ├── setup-script.sh
│   └── readme.txt
├── README.md
└── 🔍 Troubleshooting Notes

✅ Outcome

✅ Functional Apache server on AWS EC2✅ Secure SSH connection using Git Bash✅ Static website deployed via GitHub + Bash✅ Real-world troubleshooting and Linux usage

Author: Tommy813-lab  Repo: GitHub
 
