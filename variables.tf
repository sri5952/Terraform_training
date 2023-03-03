variable "regions" {
  type        = string
  description = "Region to provision VPC"
  default     = "us-east-1"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "publicsubnet-a" {
  type        = string
  description = "subnet of zone a"
  default     = "10.0.2.0/24"
}

variable "zone-a" {
  type        = string
  description = "availability zone a for public subnet-1"
  default     = "us-east-1a"
}

variable "route-table-cidr" {
    type = string
    description = "route table cidr blcok"
    default = "0.0.0.0/0"
}

variable "privatesubnet-a" {
  type        = string
  description = "subnet of zone a"
  default     = "10.0.3.0/24"
}


variable "publicsubnet-b" {
  type        = string
  description = "subnet of zone b"
  default     = "10.0.4.0/24"
}

variable "zone-b" {
  type        = string
  description = "availability zone a for public subnet-b"
  default     = "us-east-1b"
}

variable "privatesubnet-b" {
  type        = string
  description = "subnet of zone b"
  default     = "10.0.5.0/24"
}