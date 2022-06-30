#!/usr/local/bin/python3.9

# NOTE: While extremely tempting to use Greg Neagle's FoundationPlist, see
# https://github.com/munki/munki/blob/master/code/client/munkilib/FoundationPlist.py
# I wanted to put together something without external requirements.

import os
import plistlib
appList = [ "Google Chrome", "Firefox", "Microsoft Word", "Microsoft Excel", "Microsoft PowerPoint", "Adobe Acrobat Reader DC" ]
for appV in appList:
 fApp = appV+".app"
 appPath = os.path.join("/Applications", fApp)
 if os.path.isdir(appPath):
  plistPath = os.path.join("/Applications", fApp, "Contents", "Info.plist")
  #print(plistPath)
  with open(plistPath, 'rb') as fp:
   pl = plistlib.load(fp)
   print(appV)
   print(pl["CFBundleShortVersionString"],"\n")
 else:
  print (fApp, " not found", "\n")
