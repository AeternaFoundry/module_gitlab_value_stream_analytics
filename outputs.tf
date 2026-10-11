output "value_stream_analytics_id" {
  description = "Map of id values across all value_stream_analytics, keyed the same as var.value_stream_analytics except keys with no id are omitted"
  value       = { for k, v in gitlab_value_stream_analytics.value_stream_analytics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "value_stream_analytics_group_full_path" {
  description = "Map of group_full_path values across all value_stream_analytics, keyed the same as var.value_stream_analytics except keys with no group_full_path are omitted"
  value       = { for k, v in gitlab_value_stream_analytics.value_stream_analytics : k => v.group_full_path if v.group_full_path != null && length(v.group_full_path) > 0 }
}
output "value_stream_analytics_name" {
  description = "Map of name values across all value_stream_analytics, keyed the same as var.value_stream_analytics except keys with no name are omitted"
  value       = { for k, v in gitlab_value_stream_analytics.value_stream_analytics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "value_stream_analytics_project_full_path" {
  description = "Map of project_full_path values across all value_stream_analytics, keyed the same as var.value_stream_analytics except keys with no project_full_path are omitted"
  value       = { for k, v in gitlab_value_stream_analytics.value_stream_analytics : k => v.project_full_path if v.project_full_path != null && length(v.project_full_path) > 0 }
}
output "value_stream_analytics_stages" {
  description = "Map of stages values across all value_stream_analytics, keyed the same as var.value_stream_analytics except keys with no stages are omitted"
  value       = { for k, v in gitlab_value_stream_analytics.value_stream_analytics : k => v.stages if v.stages != null && length(v.stages) > 0 }
}

