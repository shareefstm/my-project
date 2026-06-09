resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id = var.subnet_id

  vpc_security_group_ids = [
    var.security_group_id
  ]
  user_data = <<-EOF
#!/bin/bash
apt update -y
apt install -y apache2
systemctl start apache2
systemctl enable apache2
echo "<h1>Hello Shareef, Terraform EC2 is working</h1>" > /var/www/html/index.html
EOF

  tags = {
    Name = "web-module-ec2"
  }
}
