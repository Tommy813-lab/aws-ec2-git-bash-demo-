# AWS EC2 Git & Bash Demo

## Project Purpose

This project demonstrates how to automate the provisioning and setup of an AWS EC2 instance using Bash scripts and Git. It covers launching an EC2 instance, installing Git and Bash tools, and automating code deployment — all foundational skills for cloud infrastructure and DevOps roles.

### Why It Matters

Mastering EC2 instance management, CLI automation, and version-controlled deployments is critical for junior cloud engineers and system administrators. This repo proves you can:

- Provision infrastructure manually or with Terraform
- Automate environment setup using Bash scripting
- Use Git for code deployment and version control
- Lay groundwork for more advanced CI/CD and cloud automation

---

## Architecture Overview

```mermaid
flowchart LR
    A[Terraform / AWS CLI] --> B[EC2 Instance]
    B --> C[Bash Setup Scripts]
    B --> D[Git Clone & Deploy Code]
    C --> E[Install Git & Bash Tools]
    D --> F[Run Application / Scripts]
Terraform/AWS CLI provisions the EC2 instance.

Bash scripts run on the EC2 instance to install Git, Bash tools, and pull project code from GitHub.

This automates setup and deployment to get your environment ready quickly.

Step-by-Step Setup Instructions
Prerequisites
AWS account with appropriate permissions.

AWS CLI installed and configured (aws configure).

Terraform installed (if using Terraform to provision EC2).

Git installed locally.

Basic knowledge of terminal commands.

1. Provision EC2 Instance
You have two options:

Option A: Manual EC2 Provisioning
Log in to AWS Console.

Navigate to EC2 > Launch Instance.

Select Amazon Linux 2 AMI.

Choose instance type (e.g., t2.micro).

Configure security group: allow SSH (port 22) from your IP.

Launch instance and download key pair (.pem file).

Option B: Automated Provisioning with Terraform (recommended)
Navigate to the terraform/ directory.

Update variables in variables.tf or create terraform.tfvars.

Run:

bash
Copy
Edit
terraform init
terraform apply
Terraform will create an EC2 instance with the configured settings.

2. Connect to Your EC2 Instance
bash
Copy
Edit
chmod 400 your-key.pem
ssh -i your-key.pem ec2-user@<EC2_PUBLIC_IP>
3. Run Setup Bash Script on EC2
Clone this repo on your EC2 instance:

bash
Copy
Edit
git clone https://github.com/Tommy813-lab/aws-ec2-git-bash-demo-.git
cd aws-ec2-git-bash-demo-
chmod +x setup.sh deploy.sh
Run the setup script to install Git, Bash tools, and dependencies:

bash
Copy
Edit
./setup.sh
Then run the deployment script to pull latest code or run your automation:

bash
Copy
Edit
./deploy.sh
4. Verify Deployment
Check the status of your setup:

Confirm Git is installed: git --version

Confirm your app or script is running (depending on your deploy.sh content).

Check logs if applicable (deploy.log or custom logs).

Optional: Automate EC2 User Data
You can embed your Bash setup commands in EC2 user data to run on instance launch, avoiding manual SSH and script execution.

Troubleshooting & Tips
Make sure your security group allows SSH access from your IP.

If ssh fails, verify the instance is running and you’re using the correct public IP.

For permission errors, ensure .pem file has correct permissions (chmod 400).

Review logs for script errors and fix accordingly.

Contact
Questions? Reach out:
Charles T Bucher (Tommy813-lab)
📧 buchercharles2@gmail.com
GitHub Profile

This repo is a foundational building block toward becoming a proficient cloud engineer focused on automation, infrastructure, and scalable deployments.

yaml
Copy
Edit

---
