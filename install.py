#!/usr/bin/env python2

import glob
from os import system as do

def list_packages(apt_file):
    pkg_names = []
    for line in open(pkg_list).readlines():
        line = line.strip()
        name, comments = line.split('#', 1)
        if name:
            pkg_names.append(name)
    return pkg_names

for apt_file in glob.glob('apt/*.txt'):
    if raw_input("Install packages from '{}' ? [y/N] ".format(apt_file)) in ('y', 'Y'):
        pkg_names = list_packages(apt_file)
        do("apt-get install {}".format(' '.join(pkg_names)))
