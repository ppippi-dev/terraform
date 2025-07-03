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
      name               = "general"
      machine_type       = "e2-standard-2"
      image_type         = "COS_CONTAINERD"
      disk_type          = "pd-standard"
      disk_size_gb       = 30
      autoscaling        = false
      node_count         = 0
      spot               = true
      auto_repair        = true
      auto_upgrade       = true
    }
  ]
}
