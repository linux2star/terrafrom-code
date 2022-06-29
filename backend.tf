terraform {
  backend "gcs" {
    bucket  = "bucket-for-statefile-48693"
    prefix  = "terraform/state"
  }
}

