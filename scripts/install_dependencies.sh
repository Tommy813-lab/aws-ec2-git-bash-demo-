aws-ec2-git-bash-demo/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
├── scripts/
│   └── deploy.sh
├── docs/
│   └── ec2-architecture.png
├── .gitignore
└── README.md


---

📄 terraform/main.tf (EC2 with security group + key pair)

Creates a t2.micro EC2 in us-east-1 with a public IP, security group for SSH, and a key pair
