variable "gcp_service_list" {
  type        = list(string)
  description = "The list of apis necessary for the project"
  default     = []
}

variable "project_id" {
  type        = string
  default = "terraform-gcp-383818"
}


variable "region" {
  type    = string
  default = "eu-west4"
}

variable "zone" {
  type    = string
  default = "eu-west4-a"
}

variable "account_id" {
  description = "The service account ID. Changing this forces a new service account to be created."
}

variable "description" {
  description = "The display name for the service account. Can be updated without creating a new resource."
  default     = "managed-by-terraform"
}

variable "roles" {
  type        = list(string)
  description = "The roles that will be granted to the service account."
  default     = []
}
