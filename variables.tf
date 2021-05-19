variable "api_gateway_id" {
  description = "Api Gateway Id"
  type = string
}


variable "integration_id" {
  description = "Api Integration Id"
  type = string
}

variable "api_gw_route_keys" {
  description = "Api Route Keys"
  type = list(string)
}
