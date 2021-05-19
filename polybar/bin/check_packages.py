import subprocess

updates = subprocess.check_output(
    "/usr/lib/update-notifier/apt-check", stderr=subprocess.STDOUT
)
output = updates.decode("ascii").replace(";", " ")
print(output)
