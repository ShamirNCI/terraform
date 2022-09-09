provider "aws" {
  profile    = "default"
  region     = "eu-west-1"
  #access_key = "my-access-key"
  #secret_key = "my-secret-key"
}

resource "aws_instance" "example" {
  ami           = "ami-09e2d756e7d78558d"
  instance_type = "t2.micro"
  key_name = "x21154929-scalable-hadoop"
  tags = {
    "Name" = SERVERNAME21154929
  }
  #publicip = true
  #tags = "21154929Terraform"
  
}

output "ec2instance" {
  value = aws_instance.example.public_ip
}

