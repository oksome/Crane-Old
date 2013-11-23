#!/usr/bin/env python2

import glob
from os import system as do

def list_packages(apt_file):
    pkg_names = []
    for line in open(apt_file).readlines():
        line = line.strip()
        name = line.split('#', 1)[0]
        if name:
            pkg_names.append(name)
    return pkg_names

for apt_file in glob.glob('apt/*.txt'):
    if raw_input("Install packages from '{}' ? [y/N] ".format(apt_file)) in ('y', 'Y'):
        pkg_names = list_packages(apt_file)
        do("apt-get install {}".format(' '.join(pkg_names)))
