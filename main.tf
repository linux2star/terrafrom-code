#provider "aws" {
#  region  = "us-east-1"
#  AWS_ACCESS_KEY_ID=AKIAYCVEJYWDIMFBIWWG
#  AWS_SECRET_ACCESS_KEY=GciPOxm5dMg/8lMZzbTLBDI+eDIIXuPhFmaZT471
#}
#resource "aws_instance" "example" {
#  ami           = "ami-0761dd91277e34178"
#  instance_type = "t2.micro"
#}
provider "aws" {
  access_key = "AKIAYCVEJYWDIMFBIWWG"
  secret_key = "GciPOxm5dMg/8lMZzbTLBDI+eDIIXuPhFmaZT471"
  region     = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0761dd91277e34178"
  instance_type = "t2.micro"
}

