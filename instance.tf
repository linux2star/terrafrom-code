resource "google_compute_instance" "demo" {
  name         = "instance-by-terraform"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  tags = ["terraform", "gcp"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  } 
network_interface {
    subnetwork = "google_compute_subnetwork.public"
    access_config {}
 } 
}
