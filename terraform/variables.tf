variable "aws_region" {
  description = "AWS region to create the VPC in."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to access SSH."
  type        = string
  default     = "0.0.0.0/0"
}

variable "allowed_http_cidr" {
  description = "CIDR block allowed to access HTTP."
  type        = string
  default     = "0.0.0.0/0"
}

variable "allowed_https_cidr" {
  description = "CIDR block allowed to access HTTPS."
  type        = string
  default     = "0.0.0.0/0"
}

variable "enable_nat_gateway" {
  description = "Whether to create a NAT Gateway for private subnet internet access."
  type        = bool
  default     = true
}

variable "instance_type" {
  description = "EC2 instance type for the application server."
  type        = string
  default     = "t2.medium"
}

variable "key_pair_name" {
  description = "Existing AWS key pair name to use for the EC2 instance."
  type        = string
  default     = "chaithu"
}

variable "tags" {
  description = "Tags to apply to all created resources."
  type        = map(string)
  default     = {
    Terraform = "true"
    Project   = "boardgame"
  }
}
