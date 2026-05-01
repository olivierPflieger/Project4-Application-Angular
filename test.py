import subprocess
import platform

cmd = ["cmd", "/c", "npm", "test"]
# subprocess.check_call('npm test', shell=True)


result = subprocess.run(
    "npm test",
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
    shell=True
)

print(result.stdout)
print("STDERR:", result.stderr)
