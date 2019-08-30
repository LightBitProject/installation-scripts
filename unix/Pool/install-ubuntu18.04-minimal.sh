# Update system
sudo apt-get update

# Install Libboost 
sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev -y

# Install Libsodium
wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
tar -xf LATEST.tar.gz
rm -rf LATEST.tar.gz
cd libsodium-stable/
./configure
sudo make && make check
sudo make install
cd ..
sudo rm -rf libsodium-stable
sudo ln -s /usr/local/lib/libsodium.so.23 /usr/lib/libsodium.so.13

# Install NPM and node
sudo apt-get install npm -y
sudo npm install n -g
sudo n v7

# Update system
sudo apt update

# Install Redis
sudo apt install redis-server -y

# Get pool code and set it up
cd /$1
git clone https://github.com/LightBitProject/lightbit-nomp pool
npm update
npm install
