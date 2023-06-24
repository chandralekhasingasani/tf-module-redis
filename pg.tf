resource "aws_elasticache_parameter_group" "main" {
  name   = "${var.COMPONENT}-${var.ENV}"
  family = "${var.ENGINE}${var.ENGINE_VERSION}"
}