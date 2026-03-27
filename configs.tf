terraform {

  required_version = ">= 1.0"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  backend "gcs" {
    bucket = "terraform_backend_test_nio"
    prefix = "terraform/state"
  }

}