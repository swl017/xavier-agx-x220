# Assuming Xavier AGX with Auvidea X220 carrier board(Jetpack 4.5), we will be installing tensorflow 1.15.4

# Native installation: Cannot installed into venv fully because you can't install opencv 3.2(for tensorflow 1.15.4) using pip

# But you need upgraded pip version, so we are going to use venv

sudo apt update
sudo apt install python3-venv python3-pip
python3 -m venv tf-1-15
source tf-1-15/bin/activate
pip install --upgrade pip

export JP_VERSION=45 # Jetpack 4.5
export TF_VERSION=1.15.4 # See https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html#install
export NV_VERSION=20.12 # See https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform-release-notes/tf-jetson-rel.html#tf-jetson-rel

# If you want to install the latest version of TensorFlow supported by a particular version of JetPack, issue the following command:
sudo pip install --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v$JP_VERSION tensorflow

# If you want to install a specific version of TensorFlow, issue the following command:
# sudo pip3 install --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v$JP_VERSION tensorflow==$TF_VERSION+nv$NV_VERSION
