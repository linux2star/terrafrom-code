terraform {
  backend "gcs" {
    bucket  = "bucket-for-statefile-48693"
    prefix  = "terraform/uat-state-file/uat"
    credentials = "keys.json"
  }
}

