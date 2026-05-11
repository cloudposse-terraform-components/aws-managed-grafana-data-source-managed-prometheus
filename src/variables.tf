variable "region" {
  type        = string
  description = "AWS Region"
}

variable "prometheus_component_name" {
  type        = string
  description = "The name of the Amazon Managed Prometheus component to be added as a Grafana data source"
  default     = "managed-prometheus/workspace"
}

variable "prometheus_stage_name" {
  type        = string
  description = "The stage where the Amazon Managed Prometheus component is deployed"
  default     = ""
}

variable "prometheus_environment_name" {
  type        = string
  description = "The environment where the Amazon Managed Prometheus component is deployed"
  default     = ""
}

variable "prometheus_tenant_name" {
  type        = string
  description = "The tenant where the Amazon Managed Prometheus component is deployed"
  default     = ""
}

variable "manage_alerts" {
  type        = bool
  description = <<-EOT
    Sets the `manageAlerts` field in the datasource's `jsonData`. Controls
    whether Grafana's Alerting UI tries to enumerate and manage alert rules
    stored on the datasource's own ruler API. AMP does not currently expose
    a Grafana-compatible ruler endpoint, so leaving this enabled (Grafana's
    default) causes the UI to surface "Failed to load the data source
    configuration / Unable to fetch alert rules" continuously after the
    workspace migrates to Grafana unified alerting. Setting this to false
    suppresses that lookup. Has no effect on Grafana unified-alerting rules
    that query AMP for data, on dashboards, or on AMP ingestion. Default is
    null (no `manageAlerts` key emitted; relies on Grafana's server-side
    default of true) to preserve existing behaviour for callers.
  EOT
  default     = null
}
