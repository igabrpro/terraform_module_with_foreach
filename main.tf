variable "names" {
  type = map
  default = {
      person1 = "Server_1"
      person2 = "Server_2"
  }
}

provider "aws" {
  region = "us-west-1"
}

module "ec2" {
  source   = "./module"
  for_each = var.names
  tags_name = each.value
}