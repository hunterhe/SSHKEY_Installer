#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAqlnNLNW7njuimrjRklgVZLpExdtjlNLgZ2yfyd2X2LLs46k7owZeYCA269JvfyHVa97sAugc5mzn+kx9SPQClqtJqRYW2GQsRfLJevuDQ2ygHURhxgBbeF0ztckh44RKUL355aMGBEQFdMxZCMmS3L/JSirCmfBoG6BD2W8M7KrsxRpgURm/sUGYP10JCUagDpGAU3TBZJetpHaU71imNdeE6Tt45R/pazn5MDhZAXPANbGI/iK22w/rTXqOCS76+pNTcw2Mo0VnZhexqsCj3C5JvbgV7+5o0YXa0u5/AqS5dpzohomn4U0V3HpIn+fv4e448GZW5Ff6c7ZVw49L2w== rsa 2048-060717' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
