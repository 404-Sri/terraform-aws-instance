variable "ami_id" {
  type = string
  description = "this is the AMI used for ec2 instance"
}

variable "instance_type" {
  type = string
  description = "instance type is used to create ec2 instance"
  validation {
    condition =  contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Please select either t3 micro or small or medium"
  }
}

variable "sg_ids" {
  type = list
}

#optional
variable "tags" {
  type = map
  default = {}
}


  
