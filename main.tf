module SqlAndVms {
    source                = "./sql_and_vms"
    service_account_email = var.service_account_email
    password              = var.password
    subnetwork            = var.subnetwork
    user                  = var.user
}

module bigQuery {
    source              = "./big_query"
    delivery_events_topic_name = module.SqlAndVms.delivery_events_topic_name
    service_account_email = var.service_account_email
}