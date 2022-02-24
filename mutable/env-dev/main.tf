module "ec2"{
  source = "git::https://github.com/teja-cloudnative/terraform-mutable-ec2"
  SERVER_COUNT = var.SERVER_COUNT
}

#module "alb" {
#  source = "git:github.com/teja-cloudnative/terraform-mutable-alb"
#}