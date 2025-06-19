aws-ec2-git-bash-demo/
├── README.md                    ← Your polished README file
├── ec2-instance-setup/
│   ├── ec2-launch-steps.txt    ← Plain text manual launch steps (optional)
│   ├── connect-ec2.sh           ← Script to connect to EC2 with Git Bash
├── web-server-setup/
│   ├── install-apache.sh        ← Bash script to install Apache2 on EC2
│   └── index.html               ← Your custom HTML page for testing
├── screenshots/
│   ├── ec2-launch.png           ← Screenshot of EC2 instance running
│   ├── apache-installed.png     ← Screenshot confirming Apache install
│   └── website-live.png         ← Screenshot of your website in browser
└── notes/
    └── troubleshooting.md       ← Common issues and fixes
2. File Contents
README.md
Copy-paste this entire polished README:

md
Copy
Edit
# AWS EC2 Deployment with Git Bash

## 🧠 Project Summary
A practical demo of launching and connecting to an AWS EC2 Ubuntu instance **using only Git Bash on Windows**, installing Apache, and serving a custom website. This project proves I can manage cloud infra without relying on GUIs, critical for remote cloud support or infra ops roles.

---

## 🚀 What I Did

1. Launched EC2 instance manually via AWS Console (t2.micro, Ubuntu 22.04)
2. Configured SSH key permissions and connected via Git Bash using `.pem` key
3. Installed Apache2 web server and deployed a simple static website
4. Documented setup steps, scripts, and common troubleshooting tips
5. Captured screenshots showing EC2 status, Apache install, and live website

---

## 🛠️ Step-by-Step Instructions

### EC2 Launch
- Use AWS Console: Choose Ubuntu 22.04 LTS, t2.micro free tier
- Create new key pair or use existing `.pem` file, save securely
- Open security group ports: TCP 22 (SSH) and 80 (HTTP)

### Connect via Git Bash
```bash
chmod 400 mykey.pem
ssh -i mykey.pem ubuntu@<ec2-public-ip>
