variable "value_stream_analytics" {
  description = <<EOT
Map of value_stream_analytics, attributes below
Required:
    - name
    - stages
Optional:
    - group_full_path
    - project_full_path
EOT

  type = map(object({
    name = string
    stages = list(object({
      custom                 = optional(bool)
      end_event_identifier   = optional(string)
      end_event_label_id     = optional(string)
      hidden                 = optional(bool)
      name                   = string
      start_event_identifier = optional(string)
      start_event_label_id   = optional(string)
    }))
    group_full_path   = optional(string)
    project_full_path = optional(string)
  }))
}

