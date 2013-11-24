# TODO: Enable different .sls files depending on the systems (grains ?)

base:

    'roles:desktop':
        - match: grain
        - basics
        - desktop
        - intercom
        
    'roles:controller':
        - match: grain
        - intercom
    
    'roles:jukebox':
        - match: grain
        - basics
        - jukebox
        - intercom
