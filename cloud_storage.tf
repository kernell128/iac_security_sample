resource "random_id" "random_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "bucket_name" {
  name          = "${random_id.random_prefix.hex}-gsc"
  force_destroy = false
  location      = local.cloud_target_region
  storage_class = "STANDARD"
  versioning {
    enabled = false
  }
}
