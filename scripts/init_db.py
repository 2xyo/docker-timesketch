#!/usr/bin/env python

import os
import sys

if __name__ == '__main__':
	print sys.path
	print os.path.dirname(os.path.realpath(__file__))
	from django.conf import settings;
	from django.contrib.auth.models import User;
	u = User(username='admin')
	u.set_password('admin')
	u.is_superuser = True
	u.is_staff = True
	u.save()