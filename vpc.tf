resource "google_compute_network" "main" {
  name                    = var.vap_name
  auto_create_subnetworks = false
  routing_mode = "GLOBAL"
}
# Public Subnet
resource "google_compute_subnetwork" "public" {
  name          = "public"
  ip_cidr_range = var.public_subnet_rang
  region        = "us-central1"
  network       = google_compute_network.main.id
}
# Private Subnet
resource "google_compute_subnetwork" "private" {
  name          = "private"
  ip_cidr_range = var.private_subnet_rang
  region        = "us-central1"
  network       = google_compute_network.main.id
}
