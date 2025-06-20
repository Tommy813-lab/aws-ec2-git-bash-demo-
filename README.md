# Web Service Project - AWS EC2 Deployment Demo

## Project Overview

This project demonstrates launching and accessing an Amazon Linux 2023 EC2 instance on AWS, configuring it with Apache to serve a static website, and securely connecting via SSH using a private key on Windows (Git Bash).

---

## Instance Details

- **Instance ID:** i-0b31e44348661fde7  
- **AMI:** Amazon Linux 2023 (ami-06971c49acd687c30)  
- **Instance Type:** t2.micro  
- **Public IP:** 3.140.197.242  
- **Region:** us-east-2 (Ohio)  
- **Key Pair Name:** my-key  
- **Security Group:** launch-wizard-1 (allows SSH port 22 from my IP)  

---

## Prerequisites

- AWS CLI or AWS Console access to launch/manage EC2 instances  
- Private key file (`my-key.pem`) downloaded securely  
- Git Bash or terminal with SSH on Windows/Linux/macOS  

---

## Connecting to the EC2 Instance via SSH

1. **Set permissions on the private key file:**

   ```bash
   chmod 400 /path/to/my-key.pem
Connect using the correct username for Amazon Linux 2023:

bash
Copy
Edit
ssh -i /path/to/my-key.pem ec2-user@3.140.197.242
Expected outcome: You should get shell access to the remote instance.

Setting Up Apache Web Server (on the EC2 instance)
Once connected via SSH, run:

bash
Copy
Edit
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
Place your static website files in the Apache root directory:

bash
Copy
Edit
sudo cp /path/to/your/index.html /var/www/html/
Verify Apache is serving the site by visiting:

cpp
Copy
Edit
http://3.140.197.242/
Project Features
Launching EC2 instance with Amazon Linux 2023 AMI

SSH access using private key authentication

Apache web server installation and setup via shell commands

Hosting a simple static website on a live public IP

Key Skills Demonstrated
AWS EC2 instance management and configuration

Secure SSH authentication with key pairs

Linux system administration and package management

Web server installation and static website hosting

Networking and security group configuration

Notes
Ensure your local IP is allowed in the EC2 security group for SSH (port 22)

Use ec2-user for Amazon Linux 2023 instances instead of ubuntu or admin

Keep your private key file secure and never share publicly

Author
Tommy — Aspiring Cloud Engineer
GitHub: https://github.com/Tommy813-lab

yaml
Copy
Edit

---

**This README.md covers:**

- Your instance info  
- SSH connection instructions with correct username  
- Basic Apache web server setup  
- Key skills recruiters look for  # Web Service Project - AWS EC2 Deployment Demo

## Project Overview

This project demonstrates launching and accessing an Amazon Linux 2023 EC2 instance on AWS, configuring it with Apache to serve a static website, and securely connecting via SSH using a private key on Windows (Git Bash).

---

## Instance Details

- **Instance ID:** i-0b31e44348661fde7  
- **AMI:** Amazon Linux 2023 (ami-06971c49acd687c30)  
- **Instance Type:** t2.micro  
- **Public IP:** 3.140.197.242  
- **Region:** us-east-2 (Ohio)  
- **Key Pair Name:** my-key  
- **Security Group:** launch-wizard-1 (allows SSH port 22 from my IP)  

---

## Prerequisites

- AWS CLI or AWS Console access to launch/manage EC2 instances  
- Private key file (`my-key.pem`) downloaded securely  
- Git Bash or terminal with SSH on Windows/Linux/macOS  

---

## Connecting to the EC2 Instance via SSH

1. **Set permissions on the private key file:**

   ```bash
   chmod 400 /path/to/my-key.pem
Connect using the correct username for Amazon Linux 2023:

bash
Copy
Edit
ssh -i /path/to/my-key.pem ec2-user@3.140.197.242
Expected outcome: You should get shell access to the remote instance.

Setting Up Apache Web Server (on the EC2 instance)
Once connected via SSH, run:

bash
Copy
Edit
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
Place your static website files in the Apache root directory:

bash
Copy
Edit
sudo cp /path/to/your/index.html /var/www/html/
Verify Apache is serving the site by visiting:

cpp
Copy
Edit
http://3.140.197.242/
Project Features
Launching EC2 instance with Amazon Linux 2023 AMI

SSH access using private key authentication

Apache web server installation and setup via shell commands

Hosting a simple static website on a live public IP

Key Skills Demonstrated
AWS EC2 instance management and configuration

Secure SSH authentication with key pairs

Linux system administration and package management

Web server installation and static website hosting

Networking and security group configuration

Notes
Ensure your local IP is allowed in the EC2 security group for SSH (port 22)

Use ec2-user for Amazon Linux 2023 instances instead of ubuntu or admin

Keep your private key file secure and never share publicly

Author
Tommy — Aspiring Cloud Engineer
GitHub: https://github.com/Tommy813-lab

yaml
Copy
Edit
