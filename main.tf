/*provider "aws" {
  access_key = "AKIAVAAXINPVM6YF237V"
  secret_key = "U6zCRukJrBr7EK3otNN/j7dgU817jfhlKMOr3r3e"
  region     = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0761dd91277e34178"
  instance_type = "t2.micro"
}*/
  
provider "google" {
  project = "mission-gcp-certification"
  region  = "us-central1"
  zone    = "us-central1-c"
}
resource "google_compute_network" "vpc" {
  name                    = demo-vpc
  auto_create_subnetworks = "false"
}
