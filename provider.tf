provider "google" {
  project = local.target_project_id
  region  = local.cloud_target_region
  zone    = local.cloud_target_zone
}
