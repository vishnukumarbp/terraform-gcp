terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.61.0"
    }
  }
}

# provider "google" {
#   credentials = "sa1_private_key.json"
# }