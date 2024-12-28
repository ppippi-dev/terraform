module "cluster" {
  source = "../module/google-kubernetes-engine"

  ip_range_pods     = ""
  ip_range_services = ""
  name              = var.gke_cluster_name
  network           = var.vpc_name
  project_id        = var.project_id
  subnetwork        = var.subnet_name
  region            = var.region
  zones             = var.zone
  regional          = false
  remove_default_node_pool = true
  monitoring_enable_managed_prometheus = false
  
  node_pools = [
    {
      name               = "pool-1"
      machine_type       = "e2-standard-2"
      min_count         = 1
      max_count         = 1
      disk_size_gb      = 10
      spot              = true
      auto_repair       = true
      auto_upgrade      = true
    },
  ]
}