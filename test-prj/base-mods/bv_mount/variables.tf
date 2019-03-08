variable "loop_count" {
  description = "Count for looping"
}

variable "instance_ip" {
  type        = "list"
  description = "IP address of the instance public or private"
}

variable "instance_username" {
  description = "Username of the instance"
}

variable "ssh_private_key" {
  description = "SSH private key of the instance"
}

variable "ssh_port" {
  description = "SSH port to login into VM"
}

variable "iqn" {
  type        = "list"
  description = "IQN of block volume"
}

variable "blockIp" {
  type        = "list"
  description = "IP address of block volume"
}
