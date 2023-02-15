terraform {
  backend "gcs" {
    bucket = "tfstate-b24aef1c9592313b"
    prefix = "terraform/state"
    project = var.project
  }
}