# Jukebox system playing music via MPD.

MPD:
    pkg.installed:
        - name: mpd
        - name: mpc
        

sound-system:
    pkg.installed:
        - name: alsa-utils
        
