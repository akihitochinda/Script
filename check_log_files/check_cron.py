#!/usr/bin/env python3

import re
import sys

logfile = sys.argv[1]
usernames = {}
with open(logfile) as f:
  for line in f:
    if "CRON" not in line:
      continue
    pattern = r"USER \((\w+)\)$"
    result = re.search(pattern, line)

    if result is None:
      continue
    name = result[1]
    usernames[name] = usernames.get(name, 0) + 1

print(usernames)

# line = "Jul 6 14:03:01 computer.name CRON[29440]: USER (naughty_user)"

# chmod +x check_cron.py
# ./check_cron.py syslog
