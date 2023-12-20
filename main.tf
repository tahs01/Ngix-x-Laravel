module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "5.1.2"
  # region        = var.aws_region
  cidr            = var.subnet_for_vpc
  azs             = var.availiblity_zone
  private_subnets = var.private_subnets_azs
  public_subnets  = var.public_subnets_azs
}