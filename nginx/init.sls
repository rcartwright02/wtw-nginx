nginx:
  pkg.installed:  []
  service.running:
    - enabled: True
    - reload: True
    - watch:
      - pkg: nginx
      - file: /etc/nginx/sites-available/*
      - file: /etc/nginx/nginx.conf
    - require:
      - pkg: nginx
