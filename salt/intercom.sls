# Intercom system for Home automation

intercom:
  user.present:
    - fullname: Intercom
    - shell: /bin/bash
    - home: /home/intercom

Intercom.git:
    
    git.latest:
        - target: /home/intercom/Intercom
        - name: https://github.com/oksome/Intercom.git
        - force_checkout: true
        - runas: intercom
        - require:
            - user: intercom
    
    cmd.run:
        - name: git reset --hard
        - cwd: /home/intercom/Intercom
        - runas: intercom
        - require:
            - user: intercom
