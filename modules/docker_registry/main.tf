resource "google_project_service" "artifact_registry_api" {
  project = var.repo_project_id
  service = "artifactregistry.googleapis.com"
}

resource "google_artifact_registry_repository" "project_docker_registry" {
  project = var.repo_project_id
  location = var.repo_location
  repository_id = "${lower(var.repo_name)}-${lower(var.repo_type)}"
  format = var.repo_type
}