{{/*
Generate the current date in a Kubernetes-friendly format (no colons or spaces)
*/}}
{{- define "app.currentDate" -}}
{{ now | date "2006-01-02" }}
{{- end }}

{{/*
Get the version from the values.yaml file or set a default
*/}}
{{- define "app.version" -}}
{{ .Values.appVersion | default "1.0.0" }}
{{- end }}
