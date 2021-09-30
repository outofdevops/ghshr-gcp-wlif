resource "google_service_account" "runner_sa" {
  project      = var.project_id
  account_id   = "gh-runner"
  display_name = "Service Account"
}

data "google_project" "project" {
  project_id = var.project_id
}

data "google_iam_policy" "wli_user_ghshr" {
  binding {
    role = "roles/iam.workloadIdentityUser"

    members = [
      "principalSet://iam.googleapis.com/projects/${data.google_project.project.number}/locations/global/workloadIdentityPools/gh-pool/attribute.full/${var.gh_repo}${var.gh_branch}",
    ]
  }
}

resource "google_service_account_iam_policy" "admin-account-iam" {
  service_account_id = google_service_account.runner_sa.name
  policy_data        = data.google_iam_policy.wli_user_ghshr.policy_data
}
