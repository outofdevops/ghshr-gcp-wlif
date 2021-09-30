variable "project_id" {
  type = string
  description = "The Google Project ID"
}

variable "gh_repo" {
  type = string
  description = "The GitHub repo in the format username/repo_name"
}

variable "gh_branch" {
  type = string
  description = "The Branch on which the Workflow execution will be authorised in the format refs/heads/<BRANCH_NAME>"
}
