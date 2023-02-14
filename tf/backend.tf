terraform {
  backend "gcs" {
    bucket = "tfstate-0aae1ae068566963"
    prefix = "terraform/state"
  }
}