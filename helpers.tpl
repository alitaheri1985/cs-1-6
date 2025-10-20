{{- define "cs.image" -}}
{{- $images := dict "ffa" "tractr/counter-strike-1.6-servers:deathmatch-ffa" "team" "tractr/counter-strike-1.6-servers:deathmatch-team" -}}
{{- $mode := .Values.deathmatch.mode | default "" -}}
{{- $enabled := .Values.deathmatch.enabled | default false -}}
image: {{ ternary (index $images $mode) "cajuclc/cstrike-docker" (and $enabled (hasKey $images $mode)) }}
{{- end -}}
