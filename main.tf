provider "google" {
  project = "mission-gcp-certification"
  region  = "us-central1"
  zone    = "us-central1-a"
  credentials = "keys.json"
}
resource "google_compute_network" "main" {
  name                    = "main"
  auto_create_subnetworks = false
  routing_mode = "GLOBAL"
}
# Public Subnet
resource "google_compute_subnetwork" "public" {
  name          = "public"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.main.id
}
# Private Subnet
resource "google_compute_subnetwork" "private" {
  name          = "private"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.main.id
}
#
resource "google_compute_instance" "demo" {
  name         = "instance-by-terraform-new"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  tags = ["terraform", "gcp"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  } 
network_interface {
    network =  "${google_compute_network.main.name}"
    subnetwork = "${google_compute_subnetwork.private.name}"
    access_config {}
 } 
}
