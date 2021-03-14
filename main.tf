provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_instance" "ec2-dev" {
  count         = 3
  ami           = "ami-038f1ca1bd58a5790"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"
  tags = {
    "Name" = "ec2-dev-${count.index}"
  }
}
