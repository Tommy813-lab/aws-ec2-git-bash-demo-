1. Connect to your EC2 instance via SSH
bash
Copy
Edit
chmod 400 /path/to/my-key.pem
ssh -i "/path/to/my-key.pem" ec2-user@<your-public-ip>
Replace /path/to/my-key.pem and <your-public-ip> accordingly.

2. Update packages and install Apache
bash
Copy
Edit
sudo dnf update -y
sudo dnf install -y httpd
3. Start Apache service and enable it at boot
bash
Copy
Edit
sudo systemctl start httpd
sudo systemctl enable httpd
4. Adjust firewall and security group
Make sure port 80 is open in your EC2 security group for HTTP traffic.

5. Deploy your static website files
Copy your website files to Apache’s root directory:

bash
Copy
Edit
sudo cp -r /home/ec2-user/your-website-files/* /var/www/html/
6. Verify the web server










