resource "aws_route53_record" "component" {
  zone_id = var.PRIVATE_HOSTED_ZONE_ID
  name    = "redis-${var.COMPONENT}-${var.ENV}.roboshop.internal"
  type    = "CNAME"
  ttl     = 300
  records = [aws_elasticache_cluster.main.cache_nodes[0].address]
}