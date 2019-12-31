#All files that need access defined for nginx, including html sites

/var/www/html:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/var/www/html/index.html:
  file.managed:
    - user: root
    - group: root
    - mode: 644

/var/www/error:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/var/www/error/custom_404.html:
  file.managed:
    - user: root
    - group: root
    - mode: 644

/var/log/nginx/example:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/var/log/nginx/localhost:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/etc/nginx/sites-enabled/www_example_com:
  file.managed:
    - user: root
    - group: root
    - mode: 644

/etc/nginx/nginx.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
