variable "instance_profile_arn" {
  description = "Instance Profile to use for EC2 to join to ECS Cluster. See `modules/iam/ecs-instance-profile`"
  type        = string
}

variable "availability_zones" {
  description = "Override automatic detection of availability zones"
  default     = ["us-east-1a","us-east-1b"]
  type        = list(string)
}

variable "enable_ipv6" {
  description = "Enable IPv6?"
  default     = false
  type        = bool
}

variable "stack_prefix" {
  description = "Stackk Prefix"
  default     = "dev-ww-ecs"
  type      = string
  
}

variable "stack_vpc_cidr" {
  description = "VPC CIDR"
  default     = "10.40.0.0/24"
  type      = string
  
}

variable "public_subnets" {
   description = "public subnet"
  default     = ["10.40.0.64/26"]
  type      = list(string)
  
}
variable "private_subnets" {
   description = "private subnet"
  default     = [ "10.40.0.128/26",  "10.40.0.192/26"]
  type      = list(string)
  
}

