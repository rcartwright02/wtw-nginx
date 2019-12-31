nginx:
  pkg.installed:  []
  service.running:
    - enabled: True
    - reload: True
    - watch:
      - pkg: nginx
      - file: /etc/nginx/*
    - require:
      - pkg: nginx
