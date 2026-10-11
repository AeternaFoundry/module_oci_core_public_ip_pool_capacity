variable "core_public_ip_pool_capacities" {
  description = <<EOT
Map of core_public_ip_pool_capacities, attributes below
Required:
    - byoip_id
    - cidr_block
    - public_ip_pool_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    byoip_id          = string
    cidr_block        = string
    public_ip_pool_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

