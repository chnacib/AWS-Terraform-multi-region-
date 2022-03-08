resource "aws_security_group" "ssh-us-east2" {
  provider = "aws"
  name        = "ssh-us-east2"
  description = "Allow SSH inbound traffic"

  ingress {
    description      = "SSH from my PC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks_myip
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "ssh-us-east1" {  
    provider = "aws.us-east-1"
    name = "ssh-us-east1"
    description = "Allow SSH inbound traffic"

  ingress {
    description      = "SSH from my PC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks_myip
  }

  tags = {
    Name = "ssh"
  }
}