#!/usr/bin/env python
import os
import sys

if __name__ == "__main__":
    os.environ['PYCHARM_DEBUG'] = 'True'
    import pydevd
    pydevd.settrace('192.168.88.26', port=33567, stdoutToServer=True, stderrToServer=True)
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "django_sample.settings")

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
