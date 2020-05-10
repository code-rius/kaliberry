import properties as props
import socket
import subprocess

print(props.user_name)

#subprocess.call(["createUser.sh", "props.user_name", "props.user_password", "props.host_rsa_pub"])

#Setup host
subprocess.call(["ls", "-l", "."])

#Setup remote (kali)
