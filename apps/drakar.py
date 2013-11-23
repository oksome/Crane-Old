
import os
import sys
import platform

from os.path import isfile, join

DRAKAR_PATH = os.environ.get('DRAKAR', '/mnt/drakar')

def get_archive(filename):
    path = join(DRAKAR_PATH, 'archives', sys.platform + '-' + platform.machine(), filename)
    print path
    

get_archive('foo')
