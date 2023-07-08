resource "aws_elasticache_cluster" "main" {
  cluster_id           = "${var.COMPONENT}-${var.ENV}"
  engine               = var.ENGINE
  node_type            = var.NODE_TYPE
  num_cache_nodes      = var.NUM_CACHE_NODES
  parameter_group_name = aws_elasticache_parameter_group.default.name
  engine_version       = var.ENGINE_VERSION
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.main.name
  security_group_ids   = [aws_security_group.allow_tls.id]
}

