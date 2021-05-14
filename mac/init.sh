!/bin/bash

ANSIBLE_PATH=~/work/ansible

## command line tools
xcode-select --install

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install ansible
brew install ansible

## clone repo
git clone -b template https://github.com/jp-taku2/ansible.git ${ANSIBLE_PATH}

## ansible
cd ${ANSIBLE_PATH}/mac
ansible-playbook mac-provisioning.yml
