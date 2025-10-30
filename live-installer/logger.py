import os
import sys

_file = "/var/log/17g-installer"

def reopen(f,option,stream):
    import os
    oldf = open(f,option)
    oldfd = oldf.fileno()
    newfd = stream.fileno()
    os.close(newfd)
    os.dup2(oldfd, newfd)

def set_logfile(path):
    if os.getuid() != 0:
        return
    global _file
    if os.path.isfile(path):
        os.unlink(path)
    _file=path
    reopen(path, "a", sys.stdout)
    reopen(path, "a", sys.stderr)

if os.getuid() != 0:
    _file = "/tmp/17g-installer.log"
    set_logfile(_file)
