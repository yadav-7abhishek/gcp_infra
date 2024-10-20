terraform {
  required_providers {
    google = {
        version = ">=6.7.0"
    }
  }
}

provider "google" {
  alias = "global_google"
}

module "abhi_docker_registry" {
  source = "./modules/docker_registry"
  repo_project_id = var.project_id
  repo_location = var.region
  repo_name = "images"
}