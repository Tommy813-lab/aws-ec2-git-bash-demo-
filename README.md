🧪 AWS EC2 Git + Bash Demo
This is a hands-on project that demonstrates how to:

✅ Launch an EC2 instance
✅ SSH into the instance using your key pair
✅ Install Git and Bash tools
✅ Clone a GitHub repo
✅ Run automated Bash commands (e.g., start a web service)

This project shows off foundational cloud engineering, Linux CLI, and developer operations — ideal for junior cloud or infra ops roles.

🚀 What You’ll Learn
🔑 How to securely SSH into EC2 with a .pem key

📦 How to install Git and Bash on an Amazon Linux 2 EC2 instance

🧰 How to use Git to clone your project repo from GitHub

⚙️ How to run Bash scripts to install packages or configure your app

🛠️ Optional: Use user_data for automatic provisioning

📁 Project Structure
bash
Copy
Edit
aws-ec2-git-bash-demo-/
│
├── README.md             # This file
├── scripts/
│   ├── setup.sh          # Installs Git + system updates
│   └── deploy.sh         # (Optional) Clone + run project
└── terraform/ (optional)
    ├── main.tf           # If used, spins up EC2 infra
    ├── variables.tf
    └── outputs.tf
⚙️ How to Use
✅ Step 1 – Launch EC2
You can launch manually in AWS Console or with Terraform.

AMI: Amazon Linux 2

Instance type: t2.micro

Inbound rules: allow SSH (22) and HTTP (80)

Key pair: create/download a .pem file

✅ Step 2 – SSH Into Instance
bash
Copy
Edit
chmod 400 my-key.pem
ssh -i "my-key.pem" ec2-user@<your-ec2-public-ip>
✅ Step 3 – Install Git + Bash Tools
You can run the setup manually or with the script:

bash
Copy
Edit
# Manual
sudo yum update -y
sudo yum install git -y

# Or use the script
bash scripts/setup.sh
✅ Step 4 – Clone Your Repo
bash
Copy
Edit
git clone https://github.com/Tommy813-lab/aws-ec2-git-bash-demo-.git
cd aws-ec2-git-bash-demo-
✅ Step 5 – Run a Bash Script (Optional)
bash
Copy
Edit
bash scripts/deploy.sh
This can:

Pull updates

Start a simple web server

Run a Node/Python app

Print log info

🧠 Why This Project Matters
Skill Proved	Description
Linux CLI	Navigating and working inside a remote server
SSH & Security	Key-based secure access to AWS infrastructure
Git Integration	Real-world code deployment on cloud infrastructure
Scripting	Automating common tasks with Bash

💻 Example Use Cases
Devs pushing code to test servers

Cloud engineers provisioning and bootstrapping EC2s

Interview take-home or demo projects

Training lab for Git, Bash, and EC2 skills

🧼 Cleanup
If launched manually, terminate the EC2 from the AWS Console.
If using Terraform:

bash
Copy
Edit
cd terraform
terraform destroy -auto-approve
🧔 Built By
Charles Bucher (aka Tommy813)
🚀 Cloud career transitioner | Git & Terraform addict
📍 GitHub
