# TODO: Enable different .sls files depending on the systems (grains ?)

base:
    '*':
        - desktop
        - intercom
