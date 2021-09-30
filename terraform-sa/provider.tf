terraform {
    required_version = "~> 1.0.7"
    required_providers {
        google-beta = {
            source = "hashicorp/google-beta"
            version = "~> 3.85.0"
        }
    }
}

provider "google-beta" {
    region      = "europe-west1"
}
