resource "google_artifact_registry_repository" "repository" {
  location      = var.location
  repository_id = "${var.repository}-${var.environment}"
  description   = "example docker repository"
  format        = "DOCKER"
}

resource "google_artifact_registry_repository_iam_binding" "binding" {
  project    = google_artifact_registry_repository.repository.project
  location   = google_artifact_registry_repository.repository.location
  repository = google_artifact_registry_repository.repository.name
  role       = "roles/artifactregistry.reader"
  members = [
    "serviceAccount:sa-artifact-repo-reader@pluralsight-gcp-infrastructure.iam.gserviceaccount.com"
  ]
}