config-ufw:
  cmd.run:
    - name: |
        ufw allow ssh/tcp
        ufw allow 3200/tcp
        ufw allow 3400/tcp
        ufw --force enable