module "ec2" {
  source              = "git::https://github.com/raghudevopsb62/terraform-mutable-ec2"
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT   = var.OD_INSTANCE_COUNT
  SPOT_INSTANCE_TYPE  = var.SPOT_INSTANCE_TYPE
  OD_INSTANCE_TYPE    = var.OD_INSTANCE_TYPE
  ENV                 = var.ENV
  COMPONENT           = var.COMPONENT
  ALB_ATTACH_TO       = "frontend"
}

module "tags" {
  count       = length(module.ec2.ALL_TAGS)
  source      = "git::https://github.com/raghudevopsb62/terraform-tags"
  TAG_NAME    = lookup(element(module.ec2.ALL_TAGS, count.index), "name")
  TAG_VALUE   = lookup(element(module.ec2.ALL_TAGS, count.index), "value")
  RESOURCE_ID = module.ec2.ALL_TAG_IDS
}