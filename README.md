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

yaml
Copy
Edit

---

## 🛠️ Step-by-Step Guide

### 1. Launch EC2 Instance
- Use AWS Console → Select **Ubuntu 22.04** + **t2.micro (Free Tier)**
- Create/download a `.pem` key pair
- Open ports **22 (SSH)** and **80 (HTTP)** in your security group

### 2. Connect via Git Bash (Windows)
```bash
chmod 400 my-key.pem
ssh -i my-key.pem ubuntu@<EC2-PUBLIC-IP>
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
Visit: http://<EC2-PUBLIC-IP>

⚙️ Tools & Technologies
AWS EC2 (Ubuntu 22.04) – Cloud VM hosting

Git Bash (Windows) – Terminal access for SSH and scripting

WSL – Optional Linux subsystem used for testing

Apache2 – Web server for hosting the static site

Bash – Scripting install and deployment steps

GitHub – Code and documentation repo

🧩 Skills Demonstrated
SSH configuration and secure remote access

Linux server management from Windows

Apache2 setup and service handling

Static site deployment to live cloud instance

Repo documentation and project structure

🔍 Troubleshooting
SSH timeout or denied? Check key permissions and port 22

Website not loading? Restart Apache, confirm port 80 open

See: notes/troubleshooting.md for detailed fixes

📸 Screenshots



🔮 Next Steps
Automate instance provisioning with Terraform

Add SSL via Let's Encrypt

Use EC2 metadata and user-data scripts

📬 Contact
For questions or collaboration: GitHub Profile

yaml
Copy
Edit

---

Let me know if you want this as a downloadable file or need help turning this into a template for future repos.







You said:
## 🛠️ Step-by-Step Guide

### 1. Launch EC2 Instance
- Use AWS Console → Select **Ubuntu 22.04** + **t2.micro (Free Tier)**
- Create/download a .pem key pair
- Open ports **22 (SSH)** and **80 (HTTP)** in your security group

### 2. Connect via Git Bash (Windows) does that go in read me 
bash
chmod 400 my-key.pem
ssh -i my-key.pem ubuntu@<EC2-PUBLIC-IP>
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
Visit: http://<EC2-PUBLIC-IP>

⚙️ Tools & Technologies
AWS EC2 (Ubuntu 22.04) – Cloud VM hosting

Git Bash (Windows) – Terminal acceor SSH and scripting 

WSL – Optional Linux subsystem used for testing

Apache2 – Web server for hosting the static site

Bash – Scripting install and deployment steps

GitHub – Code and documentation repo

🧩 Skills Demonstrated
SSH configuration and secure remote access

Linux server management from Windows

Apache2 setup and service handling

Static site deployment to live cloud instance

Repo documentation and project structure

🔍 Troubleshooting
SSH timeout or denied? Check key permissions and port 22

Website not loading? Restart Apache, confirm port 80 open

See: notes/trou 
