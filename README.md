# AWS EC2 Deployment Using Git Bash

## 🧠 Project Overview
This project demonstrates how to launch an Ubuntu EC2 instance on AWS, connect to it securely via Git Bash on Windows, and deploy a simple Apache-hosted static website. It highlights hands-on infrastructure setup using only terminal tools and scripts.

---

## 🚀 What This Project Covers

- EC2 instance creation via AWS Console (t2.micro, Ubuntu 22.04)
- Secure connection from Windows using Git Bash and `my-key`
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
Open http://ec2-3-140-197-242.us-east-2.compute.amazonaws.com in your browser

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

📸 Screenshots



🔮 Next Steps
Automate EC2 setup with Terraform or CloudFormation

Add SSL support with Let's Encrypt

Configure monitoring and alerts

📬 Contact
GitHub Profile

yaml
Copy
Edit

---

### 2. `ec2-instance-setup/connect-ec2.sh`
```bash
#!/bin/bash
# Connect to EC2 instance

KEY="my-key"
EC2_HOST="ec2-3-140-197-242.us-east-2.compute.amazonaws.com"

chmod 400 $KEY
ssh -i $KEY ubuntu@$EC2_HOST
3. web-server-setup/install-apache.sh
bash
Copy
Edit
#!/bin/bash
# Install and start Apache2 web server on Ubuntu

sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

echo "Apache2 installed and running."
4. web-server-setup/index.html
html
Copy
Edit
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>My EC2 Web Server</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      max-width: 700px;
      margin: 3rem auto;
      padding: 1rem;
      background-color: #f0f0f0;
      color: #333;
      text-align: center;
    }
    h1 {
      color: #007acc;
    }
  </style>
</head>
<body>
  <h1>It Works!</h1>
  <p>This page is served from an AWS EC2 instance running Apache2.</p>
</body>
</html>
5. notes/troubleshooting.md
md
Copy
Edit
# Troubleshooting Notes

## SSH Issues
- **Permission denied (publickey):**  
  - Ensure your key file has correct permissions:  
    `chmod 400 my-key`  
  - Verify you are using the right username (`ubuntu`)  
  - Confirm the public DNS/IP is correct  
  - Check Security Group allows inbound SSH (port 22)

- **Connection timed out:**  
  - Confirm Security Group inbound rules allow port 22  
  - Verify your instance is running

## Apache Issues
- **Website not loading:**  
  - Check Apache service status:  
    `sudo systemctl status apache2`  
  - Restart Apache if needed:  
    `sudo systemctl restart apache2`  
  - Confirm port 80 is open in Security Group

## File Upload Issues
- Use `scp` to copy files securely to EC2:  
  ```bash
  scp -i my-key index.html ubuntu@ec2-3-140-197-242.us-east-2.compute.amazonaw
