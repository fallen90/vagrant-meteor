#!/bin/bash
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash
echo "source /home/ubuntu/.nvm/nvm.sh" >> /home/ubuntu/.profile
source /home/ubuntu/.profile
nvm install 8.9.0
nvm alias default 8.9.0