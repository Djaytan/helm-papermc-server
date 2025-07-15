{{/*
Builds a full OCI image reference from the given image object.

Usage:
  {{ include "papermc-server.image" (dict "image" .Values.container.image) }}

If digest is "none", returns: <registry>/<name>:<tag>
Otherwise returns: <registry>/<name>@<digest>
*/}}
{{ define "papermc-server.image" -}}
{{ $image := .Values.container.image -}}
{{ $registry := $image.registry | default "docker.io" -}}
{{ $name := $image.name | default "djaytan/papermc-server" -}}
{{ $tag := $image.tag | default "latest" -}}
{{ $digest := $image.digest | default "none" -}}

  {{ if ne $digest "none" -}}
    {{ printf "%s/%s@%s" $registry $name $digest }}
  {{ else -}}
    {{ printf "%s/%s:%s" $registry $name $tag }}
  {{ end -}}
{{ end }}
