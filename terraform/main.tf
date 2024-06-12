
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08c90f7460d6e8377" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = "subnet-0c81661fda925acd9" # Replace with your subnet ID

  tags = {
    Name = "AppServer"
  }
}

resource "aws_ecr_repository" "app_repo" {
  name = "app-repo"
}

resource "aws_ecr_repository" "mysql_repo" {
  name = "mysql-repo"
}