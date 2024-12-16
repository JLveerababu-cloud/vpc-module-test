module "vpc" {
    source = "../terraform-aws-vpc"
     project_name = var.project_name
     environment = var.environment
     common_tags = var.common_tags
     public_subnet_cidrs = var.public_subnet_cidrs
     private_subnet_cidrs =  var.private_subnet_cidrs
     datbse_subnet_cidrs = var.datbase_subnet_cidrs
}