module "devops_cognetive_service" {
        source = "../../modules/cognetiveServices"
        rg_name = var.rg_name
        rg_location = var.rg_location
        ca_name = var.ca_name
        ca_kind = var.ca_kind
        ca_sku = var.ca_sku
}

