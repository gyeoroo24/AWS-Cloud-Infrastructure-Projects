variable "vpc_id" {
  type    = string
}

variable "task_tags" {
  type = map(any)
  default = {
    Name  = "abc"
    Email = "abc@xyz.com"
  }
}

variable "public_subnet" {
  type    = list(any)
  default = ["10.0.7.0/26", "10.0.7.64/26"]
}

variable "private_subnet" {
  type    = list(any)
  default = ["10.0.7.128/26", "10.0.7.192/26"]
}

variable "azs" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"]
}

variable "ami_id" {
  type    = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "countInstances" {
  type    = number
  default = 2
}
