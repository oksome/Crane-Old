
Relay:
    
    pkg.installed:
        - name: supervisor

    supervisord:
        - running
        - require
            - pkg: supervisor
