# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mygithub with context %}

mygithub-service-clean-service-dead:
  service.dead:
    - name: {{ mygithub.service.name }}
    - enable: False
