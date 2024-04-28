variable "project_id" {
  description = "Project id where the zone will be created."
  default     = "sharp-voyage-345407"
  type        = string
}

variable "region" {
  description = "Default region for Resource"
  default     = "us-east1"
  type        = string
}

variable "zone" {
  description = "Default zone for Resource"
  default     = ["us-east1-b"]
  type        = list(string)
}

variable "vpc_name" {
  default     = "gather-plan-network"
  type        = string
}

variable "gke_cluster_name" {
  default     = "gather-plan-cluster"
  type        = string
}