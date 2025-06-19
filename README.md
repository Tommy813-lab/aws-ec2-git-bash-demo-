🚀 AWS EC2 Deployment Using Git Bash
🧠 Project Overview
This project shows how to launch an Ubuntu EC2 instance on AWS, connect securely via Git Bash on Windows, and deploy a static website using Apache — all from the command line. It proves basic cloud infrastructure skills with minimal tools.

🚀 What This Project Covers
✅ EC2 instance creation via AWS Console (t2.micro, Ubuntu 22.04)

✅ Secure SSH connection using .pem key and Git Bash on Windows

✅ Apache2 web server installation via Bash script

✅ Static HTML website deployed to /var/www/html/

✅ Screenshots documenting EC2 launch and website status

✅ Common troubleshooting steps for SSH and Apache

📁 Project Structure
perl
Copy
Edit
aws-ec2-git-bash-demo/
├── README.md
├── ec2-instance-setup/
│   └── connect-ec2.sh         # SSH into EC2 with key
├── web-server-setup/
│   ├── install-apache.sh      # Script to install Apache
│   └── index.html             # Static web page
├── screenshots/
│   ├── ec2-launch.png
│   ├── apache-installed.png
│   └── website-live.png
└── notes/
    └── troubleshooting.md     # Common fixes for issues
🛠️ Step-by-Step Deployment Guide
1. Launch EC2 Instance
Log into AWS Console

Launch a t2.micro instance using Ubuntu 22.04

Create/download a .pem key named my-key

Add inbound rules for:

TCP 22 (SSH)

TCP 80 (HTTP)

2. Connect to EC2 via Git Bash
bash
Copy
Edit
chmod 400 my-key
ssh -i my-key ubuntu@ec2-3-140-197-242.us-east-2.compute.amazonaws.com
3. Install Apache2
bash
Copy
Edit
cd web-server-setup
chmod +x install-apache.sh
./install-apache.sh
Contents of install-apache.sh:

bash
Copy
Edit
#!/bin/bash
# Install and start Apache2

sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

echo "Apache2 installed and running."
4. Deploy Your Website
bash
Copy
Edit
sudo cp index.html /var/www/html/index.html
5. View in Browser
Visit:

arduino
Copy
Edit
http://ec2-3-140-197-242.us-east-2.compute.amazonaws.com
⚙️ Tools & Technologies
AWS EC2 (Ubuntu 22.04) – Virtual machine hosting the server

Git Bash (Windows) – Terminal for SSH and Bash scripting

Apache2 Web Server – Hosting the static site

Bash scripting – Automates deployment steps

GitHub – Version control and portfolio hosting

🔍 Troubleshooting
❌ SSH Timeout?
→ Confirm port 22 is open in EC2 Security Group

❌ Permission Denied (publickey)?
→ Run: chmod 400 my-key

❌ Site Not Loading?
→ Check Apache:

bash
Copy
Edit
sudo systemctl status apache2
sudo systemctl restart apache2
✅ See detailed notes:
notes/troubleshooting.md

🚀 AWS EC2 Deployment Using Git Bash
🧠 Project Overview
This project shows how to launch an Ubuntu EC2 instance on AWS, connect securely via Git Bash on Windows, and deploy a static website using Apache — all from the command line. It proves basic cloud infrastructure skills with minimal tools.

🚀 What This Project Covers
✅ EC2 instance creation via AWS Console (t2.micro, Ubuntu 22.04)

✅ Secure SSH connection using .pem key and Git Bash on Windows

✅ Apache2 web server installation via Bash script

✅ Static HTML website deployed to /var/www/html/

✅ Screenshots documenting EC2 launch and website status

✅ Common troubleshooting steps for SSH and Apache

📁 Project Structure
perl
Copy
Edit
aws-ec2-git-bash-demo/
├── README.md
├── ec2-instance-setup/
│   └── connect-ec2.sh         # SSH into EC2 with key
├── web-server-setup/
│   ├── install-apache.sh      # Script to install Apache
│   └── index.html             # Static web page
├── screenshots/
│   ├── ec2-launch.png
│   ├── apache-installed.png
│   └── website-live.png
└── notes/
    └── troubleshooting.md     # Common fixes for issues
🛠️ Step-by-Step Deployment Guide
1. Launch EC2 Instance
Log into AWS Console

Launch a t2.micro instance using Ubuntu 22.04

Create/download a .pem key named my-key

Add inbound rules for:

TCP 22 (SSH)

TCP 80 (HTTP)

2. Connect to EC2 via Git Bash
bash
Copy
Edit
chmod 400 my-key
ssh -i my-key ubuntu@ec2-3-140-197-242.us-east-2.compute.amazonaws.com
3. Install Apache2
bash
Copy
Edit
cd web-server-setup
chmod +x install-apache.sh
./install-apache.sh
Contents of install-apache.sh:

bash
Copy
Edit
#!/bin/bash
# Install and start Apache2

sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

echo "Apache2 installed and running."
4. Deploy Your Website
bash
Copy
Edit
sudo cp index.html /var/www/html/index.html
5. View in Browser
Visit:

arduino
Copy
Edit
http://ec2-3-140-197-242.us-east-2.compute.amazonaws.com
⚙️ Tools & Technologies
AWS EC2 (Ubuntu 22.04) – Virtual machine hosting the server

Git Bash (Windows) – Terminal for SSH and Bash scripting

Apache2 Web Server – Hosting the static site

Bash scripting – Automates deployment steps

GitHub – Version control and portfolio hosting

🔍 Troubleshooting
❌ SSH Timeout?
→ Confirm port 22 is open in EC2 Security Group

❌ Permission Denied (publickey)?
→ Run: chmod 400 my-key

❌ Site Not Loading?
→ Check Apache:

bash
Copy
Edit
sudo systemctl status apache2
sudo systemctl restart apache2
✅ See detailed notes:
notes/troubleshooting.md


