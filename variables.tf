/*variable "bucket_name" {
description = "GCS Bucket name. Value should be unique ."
type        = string
}
*/

variable "region" {
description = "Google Cloud region"
type        =  string
default     = "us-central1"
}
variable "zone" {
description = "Google Cloud region"
type        =  string
default     = "us-central1-a"
}
variable "project_name" {
description = "Google Cloud region"
type        =  string
default     = "new-project"
}
variable "vpc_name" {
description = "Google Cloud region"
type        =  string
default     = "new-vpc"
}
variable "public_subnet_rang" {
description = "Google Cloud region"
type        =  string
}
variable "private_subnet_rang" {
description = "Google Cloud region"
type        =  string
}


