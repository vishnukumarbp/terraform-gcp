
gcp_service_list = [
    "storage.googleapis.com",
    "cloudresourcemanager.googleapis.com"
]

project_id  = "terraform-gcp-383818"

account_id  = "account-tf-gcp"
description = "Bucket Admin"
roles = [
  "roles/storage.admin",
]