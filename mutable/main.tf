module "ec2"{
  source = "git:github.com/teja-cloudnative/terraform-mutable-ec2"
}

module "alb" {
  source = "git:github.com/teja-cloudnative/terraform-mutable-alb"
}