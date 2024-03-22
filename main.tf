provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "example" {
  name        = "newsecure"
  description = "Example security group for EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "example" {
  ami           = "ami-0c101f26f147fa7fd"  
  instance_type = "t2.micro"
  security_groups = ["newsecure"] 

}
