# 🚀 AWS EC2 Git Bash Demo

This project demonstrates how to launch and configure an **Ubuntu EC2 instance on AWS**, connect to it using **Git Bash on Windows**, and deploy a basic static website hosted by **Apache** — all using terminal commands and custom Bash scripts.

---

## 📦 What This Project Proves

✅ You understand real-world cloud workflows  
✅ You can automate EC2 setup and Linux provisioning  
✅ You use Git, GitHub, Bash, and AWS together  
✅ You can work solo with public cloud tools (no drag-and-drop BS)

---

## 🧱 Architecture Diagram

*(Build this using [Excalidraw](https://excalidraw.com/) or [draw.io](https://draw.io). Add the image to the repo once ready.)*

Git Bash (Windows)
↓ SSH
AWS EC2 Instance (Ubuntu)
↓ Apache2
Static Website (HTML)

yaml
Copy
Edit

---

## 🛠️ Technologies Used

- Amazon EC2 (Ubuntu 22.04)
- Git Bash (Windows Terminal)
- Apache2 Web Server
- Bash Scripts (custom setup)
- Git & GitHub (version control)

---

## ⚙️ Setup Instructions

### 1. Launch an EC2 Instance

- Region: `us-east-2`
- AMI: Ubuntu Server 22.04
- Inbound Rule: Allow HTTP (port 80) and SSH (port 22)
- Key pair: Create or reuse `.pem` file

---

### 2. SSH from Git Bash (on Windows)

```bash
chmod 400 your-key.pem
ssh -i "your-key.pem" ubuntu@<EC2-Public-IP>
3. Install Git and Clone This Repo (on EC2)
bash
Copy
Edit
sudo apt update
sudo apt install git -y
git clone https://github.com/Tommy813-lab/aws-ec2-git-bash-demo.git
cd aws-ec2-git-bash-demo
4. Run Bash Scripts
bash
Copy
Edit
cd scripts
bash update-ubuntu.sh
bash apache-install.sh
5. Deploy Website
bash
Copy
Edit
sudo mv ../website/index.html /var/www/html/index.html
6. Verify Website Works
In your browser, go to:
👉 http://<EC2-Public-IP>

Or use curl from terminal:

bash
Copy
Edit
curl http://localhost
📸 Screenshots (Add These!)
✅ EC2 instance dashboard (proof it's running)
✅ Git Bash terminal during SSH + script execution
✅ Browser showing your deployed website
✅ Curl output showing HTML response

Add images to a /screenshots/ folder and embed here.

📁 Folder Structure
aws-ec2-git-bash-demo/
├── README.md
├── scripts/
│   ├── apache-install.sh
│   └── update-ubuntu.sh
├── website/
│   └── index.html
└── screenshots/  (optional)
✍️ Author
Charles “Tommy813-lab” Bucher
Cloud Engineer in training – GitHub

