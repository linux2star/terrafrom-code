provider "aws" {
  access_key = "AKIAVAAXINPVFEE2TGMB"
  secret_key = "iItFdllEieoZsr8g8PTrdWvK7KWvJyONU69VPRpa"
  region     = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0761dd91277e34178"
  instance_type = "t2.micro"
}

