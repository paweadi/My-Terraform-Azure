module "devops_cognetive_service" {
        source = "../../modules/cognetiveServices"
        rg_name = var.rg_name
        rg_location = var.rg_location
        ca_name = var.ca_name
        ca_kind = var.ca_kind
        ca_sku = var.ca_sku
}

module "evenhub" {
        source = "../../modules/eventhub"
        evenhub_resourcegroup_name = var.evenhub_resourcegroup_name
        rg_location = var.rg_location
        eventhub_namespace_name = var.eventhub_namespace_name
        eventhub_namespace_sku = var.eventhub_namespace_sku
        eventhub_namespace_capacity = var.eventhub_namespace_capacity
        evenhub_name = var.evenhub_name
        eventhub_partition_count = var.eventhub_partition_count
        eventhub_message_retention = var.eventhub_message_retention
}
