variable "project_id" {
  description = "Project id where the zone will be created."
  default     = "sharp-voyage-345407"
  type        = string
}

variable "region" {
  description = "Default region for Resource"
  default     = "asia-northeast3"
  type        = string
}

variable "zone" {
  description = "Default zone for Resource"
  default     = ["asia-northeast3-a"]
  type        = list(string)
}

variable "vpc_name" {
  default     = "seoul-network"
  type        = string
}

variable "subnet_name" {
  default     = "subnet1"
  type        = string
}

variable "gke_cluster_name" {
  default     = "seoul-cluster"
  type        = string
}