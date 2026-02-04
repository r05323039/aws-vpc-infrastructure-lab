data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "public_test" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ssh_access.id]
  key_name               = "ian" #事先建立.pem
  tags                   = { Name = "Public-EC2-IGW-Test" }
}

resource "aws_instance" "app_test" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.app.id
  vpc_security_group_ids = [aws_security_group.ssh_access.id]
  key_name               = "ian"
  tags                   = { Name = "App-EC2-NAT-Test" }
}