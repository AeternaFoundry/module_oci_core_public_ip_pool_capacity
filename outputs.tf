output "core_public_ip_pool_capacities_id" {
  description = "Map of id values across all core_public_ip_pool_capacities, keyed the same as var.core_public_ip_pool_capacities except keys with no id are omitted"
  value       = { for k, v in oci_core_public_ip_pool_capacity.core_public_ip_pool_capacities : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_public_ip_pool_capacities_byoip_id" {
  description = "Map of byoip_id values across all core_public_ip_pool_capacities, keyed the same as var.core_public_ip_pool_capacities except keys with no byoip_id are omitted"
  value       = { for k, v in oci_core_public_ip_pool_capacity.core_public_ip_pool_capacities : k => v.byoip_id if v.byoip_id != null && length(v.byoip_id) > 0 }
}
output "core_public_ip_pool_capacities_cidr_block" {
  description = "Map of cidr_block values across all core_public_ip_pool_capacities, keyed the same as var.core_public_ip_pool_capacities except keys with no cidr_block are omitted"
  value       = { for k, v in oci_core_public_ip_pool_capacity.core_public_ip_pool_capacities : k => v.cidr_block if v.cidr_block != null && length(v.cidr_block) > 0 }
}
output "core_public_ip_pool_capacities_public_ip_pool_id" {
  description = "Map of public_ip_pool_id values across all core_public_ip_pool_capacities, keyed the same as var.core_public_ip_pool_capacities except keys with no public_ip_pool_id are omitted"
  value       = { for k, v in oci_core_public_ip_pool_capacity.core_public_ip_pool_capacities : k => v.public_ip_pool_id if v.public_ip_pool_id != null && length(v.public_ip_pool_id) > 0 }
}

