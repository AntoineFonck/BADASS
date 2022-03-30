# INSTALL GNS3

# add gns3 repo and install it with apt
# (NOTE: accept non-root use of wireshark and ubridge when prompted)
sudo add-apt-repository ppa:gns3/ppa
sudo apt update                                
sudo apt install gns3-gui gns3-server

# add IOU support (not mandatory)
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install gns3-iou

# --------------------------------------------------------------------------------------

# INSTALL DOCKER

# Remove any old versions:
sudo apt remove docker docker-engine docker.io

# Install the following packages:
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Import the official Docker GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the appropriate repo:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) stable"

# Install Docker-CE:
sudo apt update
sudo apt install docker-ce

# Finally, add your user to the following groups:
sudo usermod -aG ubridge,libvirt,kvm,wireshark,docker $(whoami)

# Now restart user session (log out/log in)
echo "Please restart your user session for some changes to apply"
