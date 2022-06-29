/*variable "bucket_name" {
description = "GCS Bucket name. Value should be unique ."
type        = string
}
*/

variable "region" {
description = "Google Cloud region"
type        = list(string)
default     = "us-central1"
}
variable "zone" {
description = "Google Cloud region"
type        = list(string)
default     = "us-central1-a"
}
variable "project_name" {
description = "Google Cloud region"
type        = list(string)
default     = "new-project"
}


