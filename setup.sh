apt update && apt upgrade -y
apt-get install qemu -y && apt-get install docker.io -y
sudo docker build . -t myos-buildenv

os_name=${uname -s}

if [os_name == Linux]
then
  docker run --rm -it -v $pwd:/root/env myos-buildenv
else
  echo "PLZ check how to do the same in your preferd OS ${os_name}"
fi