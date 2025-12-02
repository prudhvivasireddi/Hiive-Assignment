output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "nginx_service_hostname" {
  description = "External hostname of the nginx LoadBalancer service"
  value       = try(
    kubernetes_service.nginx_service.status[0].load_balancer[0].ingress[0].hostname,
    ""
  )
}