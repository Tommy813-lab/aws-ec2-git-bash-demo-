# AWS EC2 Deployment Using Git Bash

## 🧠 Project Overview
This project demonstrates how to launch an Ubuntu EC2 instance on AWS, connect to it securely via Git Bash on Windows, and deploy a simple Apache-hosted static website. It highlights hands-on infrastructure setup using only terminal tools and scripts.

---

## 🚀 What This Project Covers

- EC2 instance creation via AWS Console (t2.micro, Ubuntu 22.04)
- Secure connection from Windows using Git Bash and `.pem` key
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
