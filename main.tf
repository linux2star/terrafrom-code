provider "aws" {
  access_key = "AKIAYCVEJYWDLVY6COEE"
  secret_key = "OgADhYm8LIs1lTuIopbUul76cApgnwGCUDCTm1yc"
  region     = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0761dd91277e34178"
  instance_type = "t2.micro"
}

