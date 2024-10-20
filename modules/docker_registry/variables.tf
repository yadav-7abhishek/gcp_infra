variable "repo_project_id" {
  type = string
  description = "GCP project of the registry"
}

variable "repo_location" {
  type = string
  description = "GCP region of the registry"
}

variable "repo_type" {
  default = "DOCKER"
  type = string
  description = "GCP type of the registry"
}

variable "repo_name" {
  type = string
  description = "GCP name of the registry"
}