provider "aws" {
  access_key = "AKIAYCVEJYWDIMFBIWWG"
  secret_key = "GciPOxm5dMg/8lMZzbTLBDI+eDIIXuPhFmaZT471"
  region     = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0761dd91277e34178"
  instance_type = "t2.micro"
}

