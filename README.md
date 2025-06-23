# AWS EC2 Provisioning & Automation with Bash and Git

## 📦 Project Overview
This project demonstrates how to automate the provisioning of an **AWS EC2 instance** and deploy code using **Bash scripts** and **Git**. It showcases foundational skills needed for cloud infrastructure, DevOps, and remote system administration roles.

By the end, you'll have:
✅ An EC2 instance automatically launched and configured  
✅ Git installed and project code deployed to the server  
✅ Bash scripts to automate repetitive setup tasks  

---

## 🏗️ Architecture Diagram
```plaintext
┌─────────────────────┐         ┌───────────────────┐
│      User (You)     │  SSH    │   EC2 Instance    │
└─────────────────────┘ <────── └───────────────────┘
                                │  Bash Automation  │
                                │  Git Project Code │
                                └───────────────────┘
```

---

## ☁️ Tech Stack
- **AWS EC2** — Virtual server provisioning
- **Bash Scripting** — Infrastructure automation
- **Git** — Code version control and deployment

---

## 🚀 Features
✅ Automated EC2 provisioning  
✅ Bash scripts for server configuration  
✅ Git setup and code pull from repository  
✅ Hands-on intro to real-world infrastructure automation  

---

## 📂 Project Structure
```plaintext
.
├── provision.sh        # Bash script to launch EC2 and configure instance
├── setup.sh            # Bash script to install tools inside EC2
├── deploy.sh           # Script to pull Git repo code to EC2
└── README.md           # Project documentation
```

---

## 🔧 Step-by-Step Usage
### **1. Prerequisites**
- AWS account with proper permissions
- AWS CLI configured locally (`aws configure`)
- Existing SSH key pair for EC2 access
- GitHub repository URL for deployment

### **2. Launch EC2 & Configure with Bash**
```bash
bash provision.sh
```
- Creates an EC2 instance (default region: `us-east-1`)
- Waits for instance to be ready
- Connects via SSH and runs `setup.sh`

### **3. Deploy Code with Git**
```bash
bash deploy.sh
```
- SSH into EC2
- Clones your specified Git repository
- Application or code is ready on the server

---

## 🌐 Example Output
After running the scripts, your EC2 instance will:
✅ Be provisioned and accessible via SSH  
✅ Have Git installed  
✅ Contain your project code from GitHub  

---

## 📌 Real-World Relevance
These are baseline skills for:
- Cloud infrastructure engineers
- DevOps automation roles
- Remote Linux system administration
- Entry-level cloud support positions

Recruiters and hiring managers value candidates who can demonstrate practical automation workflows like this.

---

## 🛡️ Security Notes
- SSH key authentication is used for secure access
- Security groups should be locked down to trusted IPs only
- Never hard-code sensitive credentials in scripts

---

## 🎯 Future Improvements
- Add Terraform to automate instance provisioning entirely
- GitHub Actions workflow for automated end-to-end deployment
- Harden instance with security configurations

---

## 🙌 Credits
Built by [Charles Bucher](https://github.com/Tommy813-lab) as part of cloud infrastructure and automation learning.
