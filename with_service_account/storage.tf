
resource "google_storage_bucket" "gcs_from_sa" {
  name = "sample-gcs-bucket-from-tf-sa-1"
  location = "eu-west4"
}