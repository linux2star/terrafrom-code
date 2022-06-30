terraform {
  backend "gcs" {
    bucket  = "bucket-for-statefile-48693"
    #prefix  = "terraform/state"
    prefix  = "terraform/${var.environment}-state-file"
    credentials = "keys.json"
  }
}

