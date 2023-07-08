resource "aws_elasticache_parameter_group" "main" {
  name   = "${var.COMPONENT}-${var.ENV}"
  family = var.FAMILY
  parameter {
    name = "ClusterEnabled"
    value = "true"
  }
}