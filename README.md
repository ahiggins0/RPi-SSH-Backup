# RPi-SSH-Backup
Quick script to back up contents of a remote Raspberry Pi

# SSH
This script uses a passwordless method to authenticate to the Raspberry Pi, this is so you don't have to worry about password prompts.

Copy your public SSH key, usually located at `~/.ssh/id_rsa.pub`.

On your Raspberry Pi, if the following file or directory doesn't exist, make it. `~/.ssh/authorized_keys`

Paste the public key at the end of the `authorized_keys` file. This will allow you to securely SSH without a password.

# Running The Script
If you have random issues running this script after a copy/paste, try this command on the script: `sed -i -e 's/^M$//' RPi_Backup.sh`

You'll need to modify the script to point to the correct IP address of the Pi you're trying to backup:

`ssh pi@192.168.0.200` <-- Change this IP address and username if you are not using the `pi` user.

Replace what I have in the `dd of=` portion with the filepath of where you'd like to store the Pi backup.
