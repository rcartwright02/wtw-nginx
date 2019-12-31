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
    - source: salt://nginx/html-sites/index.html

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
    - - source: salt://nginx/html-sites/custom_404.html

/var/log/nginx:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/etc/nginx/sites-enabled/www_example_com:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://nginx/html-sites/www_example_com

/etc/nginx/sites-enabled/default:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://nginx/html-sites/default_site