# main.tf
# Entry point for Terraform configuration

terraform {
  required_version = ">= 1.0"
}

module "vpc" {
  source = "./vpc"
}

module "ecs" {
  source          = "./ecs"
  vpc_id          = module.vpc.vpc_id   # <-- add this
  private_subnets = module.vpc.private_subnets
}

module "alb" {
  source         = "./alb"
  vpc_id         = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
}

module "rds" {
  source          = "./rds"
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  db_name         = "mydb"
  db_username     = "dbadmin"
  db_password     = "Admin#1234"  
  ecs_sg_id       = module.ecs.ecs_sg_id  
}


