
resource "aws_apigatewayv2_route" "api_gw_route" {
  count     = length(var.api_gw_route_keys)
  api_id    = var.api_gateway_id
  route_key = var.api_gw_route_keys[count.index]
  target    = "integrations/${var.integration_id}"
}


variable "api_gateway_id" {
  description = "Api Gateway Id"
  type = string
}

variable "api_gw_route_keys" {
  description = "Api Route Keys"
  type = list(string)
}

variable "integration_id" {
  description = "Api Integration Id"
  type = string
}

output "route_ids" {  
  value = aws_apigatewayv2_route.api_gw_route.*.id 
}