
# AWS EC2 Apache Web Server Deployment Demo

## Project Overview

This project demonstrates how to launch an Amazon EC2 instance (Amazon Linux 2023 AMI), connect via SSH using Git Bash on Windows, automate Apache web server installation with bash scripts, and deploy a simple static website.

It shows core cloud engineering skills:
- EC2 instance launch and SSH access
- Bash scripting automation for setup
- Apache installation and website deployment
- Using key pairs securely
- Basic AWS networking and security groups

---

## Project Structure

aws-ec2-git-bash-demo/
│
├── scripts/
│ └── setup-apache.sh # Bash script to install Apache and deploy website
│
├── website/
│ ├── index.html # Static website homepage
│ └── styles.css # Example CSS
│
└── README.md # This file

yaml
Copy
Edit

---

## Prerequisites

- AWS Account with EC2 launch permissions
- Amazon Linux 2023 AMI (ami-06971c49acd687c30) in us-east-2 (Ohio)
- EC2 key pair created in AWS console (named `my-key.pem`)
- Security group allowing inbound:
  - SSH (TCP 22) from your IP
  - HTTP (TCP 80) from anywhere (0.0.0.0/0)
- Git Bash installed on Windows for SSH client

---

## Launch EC2 Instance (Summary)

- Instance type: t2.micro (free tier eligible)
- AMI: amazon/al2023-ami-2023.7.20250609.0-kernel-6.1-x86_64
- Key pair: my-key (downloaded `.pem` file saved locally)
- Security Group: launch-wizard-1 (allows SSH + HTTP inbound)
- Subnet: subnet-045209cbecc2c2dfc in us-east-2a
- Public IPv4: e.g. `3.140.197.242`
- Private IPv4: e.g. `172.31.6.55`

---

## Connect to EC2 Instance via SSH

Open Git Bash terminal on Windows and run:

```bash
chmod 400 /c/Users/YourWindowsUser/Downloads/my-key.pem
ssh -i "/c/Users/YourWindowsUser/Downloads/my-key.pem" ec2-user@3.140.197.242
Notes:

Replace /c/Users/YourWindowsUser/Downloads/my-key.pem with your actual key file path.

Use ec2-user as the default user for Amazon Linux 2023 AMI.

Ensure your security group allows SSH inbound from your IP.

Setup Apache and Deploy Website
Clone this repo locally:

bash
Copy
Edit
git clone https://github.com/Tommy813-lab/aws-ec2-git-bash-demo.git
cd aws-ec2-git-bash-demo
Copy the setup-apache.sh script to your EC2 instance:

bash
Copy
Edit
scp -i "/c/Users/YourWindowsUser/Downloads/my-key.pem" scripts/setup-apache.sh ec2-user@3.140.197.242:/home/ec2-user/
SSH into your instance:

bash
Copy
Edit
ssh -i "/c/Users/YourWindowsUser/Downloads/my-key.pem" ec2-user@3.140.197.242
Make the script executable and run it:

bash
Copy
Edit
chmod +x setup-apache.sh
./setup-apache.sh
The script will:

Update packages

Install Apache (httpd)

Start and enable Apache service

Copy static website files from /home/ec2-user/website (upload manually or use git)

Set permissions

Verify the website is running:

Open your browser and visit:

cpp
Copy
Edit
http://3.140.197.242
You should see the static website homepage.

setup-apache.sh Script Contents (Located in scripts/ folder)
bash
Copy
Edit
#!/bin/bash

# Update package repositories
sudo yum update -y

# Install Apache web server
sudo yum install -y httpd

# Start Apache service
sudo systemctl start httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Create website directory
sudo mkdir -p /var/www/html

# Copy website files from home directory (adjust if needed)
sudo cp -r /home/ec2-user/website/* /var/www/html/

# Set ownership and permissions
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

echo "Apache installed and website deployed successfully."
Important Security Notes
Never commit your .pem private key to GitHub or anywhere public.

Keep your .pem file permissions strict (chmod 400).

Security group must allow SSH only from your IP, not open to the world.

HTTP (port 80) is open to public for website access.

Troubleshooting
Permission denied (publickey):
Check your key path and permissions. Confirm correct user (ec2-user).
Confirm security group inbound SSH rules.

Unable to connect:
Check if EC2 instance is running and has public IP.
Confirm port 22 open in security group.

Apache not showing website:
SSH to instance and check Apache status:
sudo systemctl status httpd
Check /var/www/html contents.

Useful AWS Info
Item	Value
Instance ID	i-0b31e44348661fde7
Public IP	3.140.197.242
AMI ID	ami-06971c49acd687c30
Instance Type	t2.micro
Security Group	sg-0aecbd3f08ad432bd (launch-wizard-1)
VPC ID	vpc-05b94ec799e0933d5
Subnet ID	subnet-045209cbecc2c2dfc
Key Pair	my-key

License
This project is licensed under the MIT License.

Contact
Tommy Bucher
GitHub Profile
Email: buchercharles2@gmail.com

Last updated: June 20, 2025

yaml
Copy
Edit

---

