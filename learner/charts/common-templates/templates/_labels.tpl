{{/* vim: set filetype=mustache: */}}
{{/*
Kubernetes standard labels
*/}}
{{- define "common-templates.labels.standard" -}}
app.kubernetes.io/name: {{ include "common-templates.names.name" . }}
helm.sh/chart: {{ include "common-templates.names.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Labels to use on deploy.spec.selector.matchLabels and svc.spec.selector
*/}}
{{- define "common-templates.labels.matchLabels" -}}
app.kubernetes.io/name: {{ include "common-templates.names.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
