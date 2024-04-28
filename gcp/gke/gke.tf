module "cluster" {
  source = "../module/google-kubernetes-engine"

  ip_range_pods     = ""
  ip_range_services = ""
  name              = var.gke_cluster_name
  network           = var.vpc_name
  project_id        = var.project_id
  subnetwork        = "default"
  region            = var.region
  zones             = var.zone
  regional          = false
  remove_default_node_pool = true
  node_pools = [
    {
      name         = "pool-1"
      machine_type = "e2-micro"
      autoscaling  = false
      node_count   = 1
      disk_size_gb = 32
      disk_type    = "pd-balanced"
      auto_upgrade = true
    },
    {
      name = "pool-2"
      machine_type = "e2-standard-2"
      autoscaling  = false
      node_count   = 1
      disk_size_gb = 32
      disk_type    = "pd-balanced"
      auto_upgrade = true
      spot = true
    },
    {
      name         = "pool-3"
      machine_type = "e2-micro"
      autoscaling  = false
      node_count   = 0
      disk_size_gb = 32
      disk_type    = "pd-balanced"
      auto_upgrade = true
      spot = true
    },
  ]
}