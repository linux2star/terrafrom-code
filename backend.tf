terraform {
  backend "gcs" {
    bucket  = "bucket-for-statefile-48693"
    prefix  = "terraform/dev-state-file"
    credentials = "keys.json"
  }
}

