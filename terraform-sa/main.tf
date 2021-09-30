resource "google_service_account" "runner_sa" {
  project      = var.project_id
  account_id   = "gh-runner"
  display_name = "Service Account"
}

data "google_iam_policy" "wli_user_ghshr" {
  binding {
    role = "roles/iam.workloadIdentityUser"

    members = [
      "principalSet://iam.googleapis.com/projects/950564871957/locations/global/workloadIdentityPools/gh-pool/attribute.full/outofdevops/ghshr-gcp-wlifrefs/heads/main",
    ]
  }
}

resource "google_service_account_iam_policy" "admin-account-iam" {
  service_account_id = google_service_account.runner_sa.name
  policy_data        = data.google_iam_policy.wli_user_ghshr.policy_data
}
