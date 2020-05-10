#Script variables
KALI_LOCAL_IP="192.168.1.129"
HOST_AP_USERNAME="hacker"
HOST_AP_PASSWORD="superDuperSecurePassword"
KALI_PORT_SSH="22"

#Create Access Point user
sudo useradd -m $HOST_AP_USERNAME -p "$HOST_AP_PASSWORD"
sudo usermod -aG sudo $HOST_AP_USERNAME

#Get Private IP


#Generate ssh rsa keys
sudo su $HOST_AP_USERNAME -c "ssh-keygen -f ~/.ssh/id_rsa -b 4096 -t rsa -N ''"
sudo su $HOST_AP_USERNAME -c "ssh-keyscan -p "$KALI_PORT_SSH" -H $KALI_LOCAL_IP >> ~/.ssh/known_hosts"

#Generate ssh keys 
sudo apt install -y sshpass
sshpass -p your_password ssh user@ip

sudo su $HOST_AP_USERNAME -c "cat ~/.ssh/id_rsa.pub"
##
sudo su $HOST_AP_USERNAME -c ""
sudo su $HOST_AP_USERNAME -c "ssh-keyscan -p $KALI_PORT_SSH -H $KALI_LOCAL_IP >> ~/.ssh/known_hosts"
ssh-keyscan -p 22 -H $REMOTE_LOCAL_IP >> ~/.ssh/known_hosts