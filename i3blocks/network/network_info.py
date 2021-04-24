#!/usr/bin/env python3
import json
import subprocess

x = json.loads(subprocess.check_output(["vnstat", "--json", "-tr"]))
download = x['rx']['ratestring']
dspeed, dunit = download.split()
dspeed = float(str(dspeed).replace(",","."))
dunit = dunit

upload = x['tx']['ratestring']
uspeed, uunit = upload.split()
uspeed = float(str(uspeed).replace(",","."))
uunit = uunit

print(f"⬇{dspeed:.3g}{dunit} ⬆{uspeed:.3g}{uunit}")
