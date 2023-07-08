resource "aws_elasticache_parameter_group" "default" {
  name   = "${var.COMPONENT}-pg"
  family = var.FAMILY
}