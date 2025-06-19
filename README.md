# AWS EC2 Deployment Using Git Bash

## 🧠 Project Overview
This project demonstrates how to launch an Ubuntu EC2 instance on AWS, connect securely via Git Bash on Windows, and deploy a simple Apache-hosted static website using terminal tools and scripts.

---

## 🚀 What This Project Covers

- EC2 instance creation via AWS Console (t2.micro, Ubuntu 22.04)
- Secure connection from Windows using Git Bash and private key `my-key`
- Apache2 installation via Bash script
- Static website deployment to `/var/www/html/`
- Screenshots documenting live deployment and Apache status
- Common troubleshooting steps included

---

## 📁 Project Structure

aws-ec2-git-bash-demo/
├── README.md
├── ec2-instance-setup/
│ └── connect-ec2.sh
├── web-server-setup/
│ ├── install-apache.sh
│ └── index.html
├── screenshots/
│ ├── ec2-launch.png
│ ├── apache-installed.png
│ └── website-live.png
└── notes/
└── troubleshooting.md

yaml
Copy
Edit

---

## 🛠️ Step-by-Step Guide

### 1. Launch EC2 Instance
- Use AWS Console → Select **Ubuntu 22.04** + **t2.micro (Free Tier)**
- Create/download your private key file `my-key` and store it securely
- Open ports **22 (SSH)** and **80 (HTTP)** in your security group

### 2. Connect via Git Bash (Windows)

```bash
chmod 400 my-key
ssh -i my-key ubuntu@ec2-3-140-197-242.us-east-2.compute.amazonaws.com
3. Install Apache2
bash
Copy
Edit
cd web-server-setup
chmod +x install-apache.sh
./install-apache.sh
4. Deploy Website
bash
Copy
Edit
sudo cp index.html /var/www/html/index.html
5. Test in Browser
Open:
http://ec2-3-140-197-242.us-east-2.compute.amazonaws.com

⚙️ Tools & Technologies
AWS EC2 (Ubuntu 22.04)

Git Bash (Windows)

Apache2 Web Server

Bash scripting

GitHub

🔍 Troubleshooting
SSH timeout? Check your Security Group allows port 22

Permission denied? Make sure chmod 400 my-key is set

Website not loading? Restart Apache: sudo systemctl restart apache2

Confirm port 80 is open in Security Group

See notes/troubleshooting.md for more info.


