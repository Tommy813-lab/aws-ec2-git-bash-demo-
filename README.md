# AWS EC2 Git Bash Demo

## Overview

This project demonstrates launching and managing an Amazon EC2 instance running Linux (Amazon Linux 2023 AMI) using Git Bash on Windows. It includes securely connecting via SSH with a PEM key, automating Apache web server installation and static website deployment through bash scripts, and basic AWS infrastructure understanding.

This hands-on project highlights practical cloud engineer skills such as Linux server management, SSH key handling, bash scripting, and AWS EC2 fundamentals.

---

## Project Goals

- Launch and configure a t2.micro EC2 instance on AWS with Amazon Linux 2023 AMI
- Connect securely via SSH using Git Bash on Windows with a PEM key
- Automate Apache web server installation and static website deployment using bash scripts
- Validate web server availability through browser and terminal tests
- Demonstrate use of AWS EC2 instance metadata and networking

---

## Prerequisites

- AWS Account with EC2 launch permissions
- PEM key file (`my-key.pem`) generated from AWS Key Pair console
- Git Bash installed on Windows
- Basic familiarity with Linux terminal commands and SSH

---

## Architecture

[Your ASCII or link to diagram here, e.g. Excalidraw or draw.io link]

yaml
Copy
Edit

- EC2 Instance: t2.micro, Amazon Linux 2023 AMI
- Public IPv4: 3.140.197.242 (auto-assigned)
- Private IPv4: 172.31.6.55
- Security Group: Launch Wizard default allowing SSH (port 22) and HTTP (port 80)
- Key Pair: `my-key.pem`

---

## Step-by-Step Setup Instructions

### 1. Launch EC2 instance

- Use AWS Management Console or CLI to launch an instance with:
  - AMI: `amazon/al2023-ami-2023.7.20250609.0-kernel-6.1-x86_64`
  - Instance type: `t2.micro`
  - Key pair: `my-key`
  - Security group allowing SSH and HTTP access

### 2. Set PEM key permissions on Windows Git Bash

```bash
chmod 400 /c/Users/YourUserName/Downloads/my-key.pem
Note: Adjust path to your key location.

3. Connect via SSH
bash
Copy
Edit
ssh -i "/c/Users/YourUserName/Downloads/my-key.pem" ec2-user@3.140.197.242
Expected prompt:

bash
Copy
Edit
[ec2-user@ip-172-31-6-55 ~]$
4. Run automated Apache install and website deploy script
Clone repo and navigate to script directory or download script directly:

bash
Copy
Edit
git clone https://github.com/Tommy813-lab/aws-ec2-git-bash-demo.git
cd aws-ec2-git-bash-demo/web-server-setup
chmod +x setup-apache.sh
./setup-apache.sh
This script will:

Install Apache HTTP Server (httpd)

Start and enable Apache service

Deploy static website files to /var/www/html

5. Verify Website Deployment
Open a browser and navigate to:

cpp
Copy
Edit
http://3.140.197.242/
You should see your deployed static website.

Or verify with curl:

bash
Copy
Edit
curl http://3.140.197.242/
Expected output: HTML content of your static website.

Bash Script Summary (setup-apache.sh)
bash
Copy
Edit
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo cp -r ./website/* /var/www/html/
sudo systemctl restart httpd
Troubleshooting Tips
Ensure your PEM key path is correct and permissions are set to 400.

Make sure your security group allows inbound SSH (port 22) and HTTP (port 80).

Confirm instance public IP or DNS name has not changed if you stopped and restarted the instance.

If connection denied: verify user is ec2-user (Amazon Linux default) or ubuntu if using Ubuntu AMI.

Check Apache service status with sudo systemctl status httpd.

Next Steps / Improvements
Automate EC2 deployment using Terraform for infrastructure-as-code practice

Add SSL/TLS support with Let's Encrypt for HTTPS

Implement CloudWatch monitoring and alarms on EC2 metrics

Create CI/CD pipeline for automated deployment updates

Expand to multi-instance deployment with load balancing

Contact & Links
GitHub: https://github.com/Tommy813-lab/aws-ec2-git-bash-demo

LinkedIn: [Add your LinkedIn URL here]

Email: [Your professional email]

License
This project is licensed under the MIT License.

Last updated: June 20, 2025

yaml
Copy
Edit









