resource "oci_core_public_ip_pool_capacity" "core_public_ip_pool_capacities" {
  for_each = var.core_public_ip_pool_capacities

  byoip_id          = each.value.byoip_id
  cidr_block        = each.value.cidr_block
  public_ip_pool_id = each.value.public_ip_pool_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

