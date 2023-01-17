#!/usr/bin/python3
"""A script that
- fetches https://intranet.hbtn.io/status.
- uses urlib package
"""

import urllib.request

with urllib.request.urlopen("https://intranet.hbtn.io/status") as response:
    body = response.read()
    print("Body response:")
    print("\t- type:", type(body))
    print("\t- content: b'", body, "'", sep='')
    print("\t- utf8 content:", body.decode("utf-8"))


