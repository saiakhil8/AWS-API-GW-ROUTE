

module "api_gateway_route" { 
    source = "./modules/api-gateway-route"
    api_gateway_id     = var.api_gateway_id
    integration_id     = var.integration_id
    api_gw_route_keys   = var.api_gw_route_keys
}