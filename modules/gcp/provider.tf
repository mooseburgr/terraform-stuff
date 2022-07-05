provider "google" {
  project = "plex-utils"
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "plex-utils" {
  source = "./plex-utils"
}