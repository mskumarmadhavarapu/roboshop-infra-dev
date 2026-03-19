resource "aws_ssm_parameter" "backend_alb_listener_arn" {
  name  = "/${var.project}/${var.environment}/backend_alb_listener_arn"
  type  = "String"
  value = backend_alb_listener.http.arn
}