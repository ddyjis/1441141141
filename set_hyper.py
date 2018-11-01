#!/usr/bin/env python
import sys
import os
import subprocess

with open('%s/.hyper.js' % os.path.expanduser('~'), 'r') as f:
    filedata = f.read()

zsh_location = subprocess.check_output(['which', 'zsh'])
zsh_location = zsh_location.replace('\n', '')
filedata = filedata.replace("shell: '',", "shell: '%s'," % zsh_location)

with open('%s/.hyper.js' % os.path.expanduser('~'), 'w') as f:
    f.write(filedata)
