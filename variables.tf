variable "ec2_fleets" {
  description = <<EOT
Map of ec2_fleets, attributes below
Required:
    - launch_template_config (block):
        - launch_template_specification (optional, block):
            - launch_template_id (optional)
            - launch_template_name (optional)
            - version (required)
        - override (optional, block):
            - availability_zone (optional)
            - instance_requirements (optional, block):
                - accelerator_count (optional, block):
                    - max (optional)
                    - min (optional)
                - accelerator_manufacturers (optional)
                - accelerator_names (optional)
                - accelerator_total_memory_mib (optional, block):
                    - max (optional)
                    - min (optional)
                - accelerator_types (optional)
                - allowed_instance_types (optional)
                - bare_metal (optional)
                - baseline_ebs_bandwidth_mbps (optional, block):
                    - max (optional)
                    - min (optional)
                - burstable_performance (optional)
                - cpu_manufacturers (optional)
                - excluded_instance_types (optional)
                - instance_generations (optional)
                - local_storage (optional)
                - local_storage_types (optional)
                - max_spot_price_as_percentage_of_optimal_on_demand_price (optional)
                - memory_gib_per_vcpu (optional, block):
                    - max (optional)
                    - min (optional)
                - memory_mib (required, block):
                    - max (optional)
                    - min (required)
                - network_bandwidth_gbps (optional, block):
                    - max (optional)
                    - min (optional)
                - network_interface_count (optional, block):
                    - max (optional)
                    - min (optional)
                - on_demand_max_price_percentage_over_lowest_price (optional)
                - require_hibernate_support (optional)
                - spot_max_price_percentage_over_lowest_price (optional)
                - total_local_storage_gb (optional, block):
                    - max (optional)
                    - min (optional)
                - vcpu_count (required, block):
                    - max (optional)
                    - min (required)
            - instance_type (optional)
            - max_price (optional)
            - priority (optional)
            - subnet_id (optional)
            - weighted_capacity (optional)
    - target_capacity_specification (block):
        - default_target_capacity_type (required)
        - on_demand_target_capacity (optional)
        - spot_target_capacity (optional)
        - target_capacity_unit_type (optional)
        - total_target_capacity (required)
Optional:
    - context
    - excess_capacity_termination_policy
    - fleet_state
    - fulfilled_capacity
    - fulfilled_on_demand_capacity
    - region
    - replace_unhealthy_instances
    - tags
    - tags_all
    - terminate_instances
    - terminate_instances_with_expiration
    - type
    - valid_from
    - valid_until
    - fleet_instance_set (block):
        - instance_ids (optional)
        - instance_type (optional)
        - lifecycle (optional)
        - platform (optional)
    - on_demand_options (block):
        - allocation_strategy (optional)
        - capacity_reservation_options (optional, block):
            - usage_strategy (optional)
        - max_total_price (optional)
        - min_target_capacity (optional)
        - single_availability_zone (optional)
        - single_instance_type (optional)
    - spot_options (block):
        - allocation_strategy (optional)
        - instance_interruption_behavior (optional)
        - instance_pools_to_use_count (optional)
        - maintenance_strategies (optional, block):
            - capacity_rebalance (optional, block):
                - replacement_strategy (optional)
                - termination_delay (optional)
        - max_total_price (optional)
        - min_target_capacity (optional)
        - single_availability_zone (optional)
        - single_instance_type (optional)
EOT

  type = map(object({
    context                             = optional(string)
    excess_capacity_termination_policy  = optional(string)
    fleet_state                         = optional(string)
    fulfilled_capacity                  = optional(number)
    fulfilled_on_demand_capacity        = optional(number)
    region                              = optional(string)
    replace_unhealthy_instances         = optional(bool)
    tags                                = optional(map(string))
    tags_all                            = optional(map(string))
    terminate_instances                 = optional(bool)
    terminate_instances_with_expiration = optional(bool)
    type                                = optional(string)
    valid_from                          = optional(string)
    valid_until                         = optional(string)
    launch_template_config = list(object({
      launch_template_specification = optional(object({
        launch_template_id   = optional(string)
        launch_template_name = optional(string)
        version              = string
      }))
      override = optional(list(object({
        availability_zone = optional(string)
        instance_requirements = optional(object({
          accelerator_count = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          accelerator_manufacturers = optional(set(string))
          accelerator_names         = optional(set(string))
          accelerator_total_memory_mib = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          accelerator_types      = optional(set(string))
          allowed_instance_types = optional(set(string))
          bare_metal             = optional(string)
          baseline_ebs_bandwidth_mbps = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          burstable_performance                                   = optional(string)
          cpu_manufacturers                                       = optional(set(string))
          excluded_instance_types                                 = optional(set(string))
          instance_generations                                    = optional(set(string))
          local_storage                                           = optional(string)
          local_storage_types                                     = optional(set(string))
          max_spot_price_as_percentage_of_optimal_on_demand_price = optional(number)
          memory_gib_per_vcpu = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          memory_mib = object({
            max = optional(number)
            min = number
          })
          network_bandwidth_gbps = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          network_interface_count = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          on_demand_max_price_percentage_over_lowest_price = optional(number)
          require_hibernate_support                        = optional(bool)
          spot_max_price_percentage_over_lowest_price      = optional(number)
          total_local_storage_gb = optional(object({
            max = optional(number)
            min = optional(number)
          }))
          vcpu_count = object({
            max = optional(number)
            min = number
          })
        }))
        instance_type     = optional(string)
        max_price         = optional(string)
        priority          = optional(number)
        subnet_id         = optional(string)
        weighted_capacity = optional(number)
      })))
    }))
    target_capacity_specification = object({
      default_target_capacity_type = string
      on_demand_target_capacity    = optional(number)
      spot_target_capacity         = optional(number)
      target_capacity_unit_type    = optional(string)
      total_target_capacity        = number
    })
    fleet_instance_set = optional(list(object({
      instance_ids  = optional(list(string))
      instance_type = optional(string)
      lifecycle     = optional(string)
      platform      = optional(string)
    })))
    on_demand_options = optional(object({
      allocation_strategy = optional(string)
      capacity_reservation_options = optional(object({
        usage_strategy = optional(string)
      }))
      max_total_price          = optional(string)
      min_target_capacity      = optional(number)
      single_availability_zone = optional(bool)
      single_instance_type     = optional(bool)
    }))
    spot_options = optional(object({
      allocation_strategy            = optional(string)
      instance_interruption_behavior = optional(string)
      instance_pools_to_use_count    = optional(number)
      maintenance_strategies = optional(object({
        capacity_rebalance = optional(object({
          replacement_strategy = optional(string)
          termination_delay    = optional(number)
        }))
      }))
      max_total_price          = optional(string)
      min_target_capacity      = optional(number)
      single_availability_zone = optional(bool)
      single_instance_type     = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ec2_fleets : (
        length(v.launch_template_config) >= 1 && length(v.launch_template_config) <= 50
      )
    ])
    error_message = "Each launch_template_config list must contain between 1 and 50 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_fleets : (
        alltrue([for item in v.launch_template_config : (item.override == null || (length(item.override) <= 300))])
      )
    ])
    error_message = "Each override list must contain at most 300 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_fleets : (
        alltrue([for item in v.launch_template_config : (item.launch_template_specification == null || (item.launch_template_specification.launch_template_name == null || (length(item.launch_template_specification.launch_template_name) >= 3)))])
      )
    ])
    error_message = "[from verify.ValidLaunchTemplateName: invalid when len(value) < 3]"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_fleets : (
        alltrue([for item in v.launch_template_config : (item.override == null || alltrue([for item in item.override : (item.instance_requirements == null || (item.instance_requirements.max_spot_price_as_percentage_of_optimal_on_demand_price == null || (item.instance_requirements.max_spot_price_as_percentage_of_optimal_on_demand_price >= 1)))]))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_fleets : (
        alltrue([for item in v.launch_template_config : (item.override == null || alltrue([for item in item.override : (item.instance_requirements == null || (item.instance_requirements.on_demand_max_price_percentage_over_lowest_price == null || (item.instance_requirements.on_demand_max_price_percentage_over_lowest_price >= 1)))]))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_fleets : (
        alltrue([for item in v.launch_template_config : (item.override == null || alltrue([for item in item.override : (item.instance_requirements == null || (item.instance_requirements.spot_max_price_percentage_over_lowest_price == null || (item.instance_requirements.spot_max_price_percentage_over_lowest_price >= 1)))]))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_fleets : (
        v.spot_options == null || (v.spot_options.instance_pools_to_use_count == null || (v.spot_options.instance_pools_to_use_count >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_fleets : (
        v.spot_options == null || (v.spot_options.maintenance_strategies == null || (v.spot_options.maintenance_strategies.capacity_rebalance == null || (v.spot_options.maintenance_strategies.capacity_rebalance.termination_delay == null || (v.spot_options.maintenance_strategies.capacity_rebalance.termination_delay >= 120 && v.spot_options.maintenance_strategies.capacity_rebalance.termination_delay <= 7200))))
      )
    ])
    error_message = "must be between 120 and 7200"
  }
  # Note: 41 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

