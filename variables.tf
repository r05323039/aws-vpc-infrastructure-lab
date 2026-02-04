variable "region" {
  description = "AWS 區域"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC 的主要網段"
  default     = "10.1.0.0/16"
}

variable "public_subnet_cidr" {
  description = "公有子網段 (Web/LB)"
  default     = "10.1.1.0/24"
}

variable "app_subnet_cidr" {
  description = "應用程式子網段 (App)"
  default     = "10.1.2.0/24"
}

variable "db_subnet_cidr" {
  description = "資料庫子網段 (DB)"
  default     = "10.1.3.0/24"
}

variable "project_name" {
  description = "專案名稱標籤"
  default     = "ian"
}