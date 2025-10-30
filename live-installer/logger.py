import os
import sys

logfile = None
_file = "/var/log/17g-installer"

def set_logfile(path):
    if os.getuid() != 0:
        return
    global logfile, _file
    if logfile:
        logfile.flush()
        logfile.close()
    if os.path.isfile(path):
        os.unlink(path)
    _file=path
    logfile = open(path,"a")
    sys.stdout = logfile
    sys.stderr = logfile

if os.getuid() != 0:
    _file = "/tmp/17g-installer.log"
    logfile = open(_file,"a")

