resource "google_service_account" "sa" {
  project      = var.project_id
  account_id   = var.account_id
  display_name = var.description

}

resource "google_project_iam_member" "sa_iam" {
  for_each = toset(var.roles)

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.sa.email}"
}

resource "google_service_account_key" "sa_key" {
  service_account_id = google_service_account.sa.name
  private_key_type = "TYPE_GOOGLE_CREDENTIALS_FILE"
}

resource "local_file" "key_sa1_private_key" {
  filename = "tee.key"
  content = google_service_account_key.sa_key.private_key

  provisioner "local-exec" {
    command = "base64 -d tee.key > sa1_private_key.json"
  }
}
