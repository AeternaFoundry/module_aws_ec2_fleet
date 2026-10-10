output "ec2_fleets_id" {
  description = "Map of id values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_fleets_arn" {
  description = "Map of arn values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ec2_fleets_context" {
  description = "Map of context values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.context if v.context != null && length(v.context) > 0 }
}
output "ec2_fleets_excess_capacity_termination_policy" {
  description = "Map of excess_capacity_termination_policy values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.excess_capacity_termination_policy if v.excess_capacity_termination_policy != null && length(v.excess_capacity_termination_policy) > 0 }
}
output "ec2_fleets_fleet_instance_set" {
  description = "Map of fleet_instance_set values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.fleet_instance_set if v.fleet_instance_set != null && length(v.fleet_instance_set) > 0 }
}
output "ec2_fleets_fleet_state" {
  description = "Map of fleet_state values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.fleet_state if v.fleet_state != null && length(v.fleet_state) > 0 }
}
output "ec2_fleets_fulfilled_capacity" {
  description = "Map of fulfilled_capacity values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.fulfilled_capacity if v.fulfilled_capacity != null }
}
output "ec2_fleets_fulfilled_on_demand_capacity" {
  description = "Map of fulfilled_on_demand_capacity values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.fulfilled_on_demand_capacity if v.fulfilled_on_demand_capacity != null }
}
output "ec2_fleets_launch_template_config" {
  description = "Map of launch_template_config values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.launch_template_config if v.launch_template_config != null && length(v.launch_template_config) > 0 }
}
output "ec2_fleets_on_demand_options" {
  description = "Map of on_demand_options values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => one(v.on_demand_options) if v.on_demand_options != null && length(v.on_demand_options) > 0 }
}
output "ec2_fleets_region" {
  description = "Map of region values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_fleets_replace_unhealthy_instances" {
  description = "Map of replace_unhealthy_instances values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.replace_unhealthy_instances if v.replace_unhealthy_instances != null }
}
output "ec2_fleets_spot_options" {
  description = "Map of spot_options values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => one(v.spot_options) if v.spot_options != null && length(v.spot_options) > 0 }
}
output "ec2_fleets_tags" {
  description = "Map of tags values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ec2_fleets_tags_all" {
  description = "Map of tags_all values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ec2_fleets_target_capacity_specification" {
  description = "Map of target_capacity_specification values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => one(v.target_capacity_specification) if v.target_capacity_specification != null && length(v.target_capacity_specification) > 0 }
}
output "ec2_fleets_terminate_instances" {
  description = "Map of terminate_instances values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.terminate_instances if v.terminate_instances != null }
}
output "ec2_fleets_terminate_instances_with_expiration" {
  description = "Map of terminate_instances_with_expiration values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.terminate_instances_with_expiration if v.terminate_instances_with_expiration != null }
}
output "ec2_fleets_type" {
  description = "Map of type values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.type if v.type != null && length(v.type) > 0 }
}
output "ec2_fleets_valid_from" {
  description = "Map of valid_from values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.valid_from if v.valid_from != null && length(v.valid_from) > 0 }
}
output "ec2_fleets_valid_until" {
  description = "Map of valid_until values across all ec2_fleets, keyed the same as var.ec2_fleets"
  value       = { for k, v in aws_ec2_fleet.ec2_fleets : k => v.valid_until if v.valid_until != null && length(v.valid_until) > 0 }
}

