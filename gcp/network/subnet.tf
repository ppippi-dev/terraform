resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = "10.1.0.0/16"
  region        = "us-east1"
  network       = google_compute_network.vpc_network.id
  secondary_ip_range {
    range_name    = "secondary-range"
    ip_cidr_range = "192.168.10.0/24"
  }
}
