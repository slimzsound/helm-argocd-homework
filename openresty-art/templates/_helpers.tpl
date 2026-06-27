{{/*
Expand the name of the chart.
*/}}
{{- define "openresty-art.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a full name using release name and chart name.
*/}}
{{- define "openresty-art.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "openresty-art.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "openresty-art.labels" -}}
app.kubernetes.io/name: {{ include "openresty-art.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}