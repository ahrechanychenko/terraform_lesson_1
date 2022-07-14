terraform {
  required_providers {
    google = {
      version = "4.15.0"
      source  = "hashicorp/google"
    }

  }
}

provider "google" {
  project     = "nimble-analyst-356011"
  region      = "europe-central2"
  zone        = "europe-central2-a"
  credentials = "key.json"
}
