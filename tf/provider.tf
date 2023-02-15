provider "google" {
  region  = var.location
  project = var.project
  credentials = "./gcp/key-file.json"
}