#!/usr/bin/env python 
import subprocess
import distro

def manjaro():
    updates = subprocess.run(
        ["/usr/bin/pamac", "checkupdates", "-qa"],
        check=False,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    ).stdout
    output = updates.decode("ascii")
    return output.count("\n")

def ubuntu():
    updates = subprocess.check_output(
        "/usr/lib/update-notifier/apt-check", stderr=subprocess.STDOUT
    )
    output = updates.decode("ascii").replace(";", " ")
    return output

dist = distro.LinuxDistribution().id()

if dist == "manjaro":
    print(manjaro())
else:
    print(ubuntu())

