#!/usr/bin/env python
import sys
import os
import subprocess

with open('%s/.zshrc' % os.path.expanduser('~'), 'r') as f:
    filedata = f.read()

filedata = filedata.replace('ZSH_THEME="robbyrussell"', 'ZSH_THEME="geometry/geometry"')

with open('%s/.zshrc' % os.path.expanduser('~'), 'w') as f:
    f.write(filedata)