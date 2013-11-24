# Intercom system for Home automation

User:
    user.present:
        - name: intercom
        - fullname: Intercom
        - shell: /bin/bash
        - home: /home/intercom

Packages:
    pkg.installed:
        - names:
            - git
            - python3-zmq

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
            - user: User
            - pkg: Packages
