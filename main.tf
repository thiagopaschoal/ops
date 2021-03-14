provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["201.69.194.202/32"]
  }
  tags = {
    Name = "allow_ssh"
  }
}
resource "aws_instance" "ec2-dev" {
  count                  = 2
  ami                    = "ami-038f1ca1bd58a5790"
  instance_type          = "t2.micro"
  key_name               = "terraform-aws"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}", "sg-e2d612d6"]
  tags = {
    "Name" = "ec2-dev-${count.index}"
  }
}
