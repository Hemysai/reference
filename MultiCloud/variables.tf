variable "project" {
  default = "multi_cloud"
}

variable "location" {
  default = "East US"
}
variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Project     = "multi_cloud"
  }
}


variable "aws_region" {
  description = "The AWS region to deploy resources into"
  type        = string
  default     = "us-east-1" 
}
