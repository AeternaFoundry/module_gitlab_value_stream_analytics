resource "gitlab_value_stream_analytics" "value_stream_analytics" {
  for_each = var.value_stream_analytics

  name              = each.value.name
  stages            = each.value.stages
  group_full_path   = each.value.group_full_path
  project_full_path = each.value.project_full_path
}

