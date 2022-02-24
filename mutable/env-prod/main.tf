module "ec2"{
  source              = "git:https://github.com/teja-cloudnative/terraform-mutable-ec2"
  OD_INSTANCE_COUNT   = var.OD_INSTANCE_COUNT
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_TYPE    = var.OD_INSTANCE_TYPE
  SPOT_INSTANCE_TYPE  = var.SPOT_INSTANCE_TYPE
  COMPONENT           = var.COMPONENT
  ENV                 = var.ENV
}

#module "alb" {
#  source = "git:github.com/teja-cloudnative/terraform-mutable-alb"
#}