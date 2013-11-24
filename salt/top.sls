# TODO: Enable different .sls files depending on the systems (grains ?)

base:

    'roles:desktop':
        - match: grain
        - basics
        - desktop
        - intercom
        
    'roles:intercom-relay':
        - match: grain
        - intercom
        - intercom-relay
    
    'roles:jukebox':
        - match: grain
        - basics
        - jukebox
        - intercom
