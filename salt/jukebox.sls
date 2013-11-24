# Jukebox system playing music via MPD.

MPD:
    pkg.installed:
        - names: 
            - mpd
            - mpc
        

sound-system:
    pkg.installed:
        - names: 
            - alsa-utils
        
