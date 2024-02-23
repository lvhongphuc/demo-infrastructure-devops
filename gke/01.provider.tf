provider "google" {
    project = "delta-transit-410102"
    region = "us-central1"
}

terraform {
    backend "gcs" {
        bucket = "app-to-gks"
        prefix = "terraform/state"
    }

    required_providers {
      google = {
        source = "hashicorp/google"
        version = "~> 4.0"
      }
    }
}