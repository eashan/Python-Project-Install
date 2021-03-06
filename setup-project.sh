#This file will install git, python pip, setup a virtualenv, and download a git project as specified in the command line argument
#Takes 2 arguments
sudo apt-get install git
sudo apt-get install Python-pip
sudo apt install libpq-dev python-dev

#Insall Sublime Text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

sudo pip install virtualenv

git clone $1

cd $2

virtualenv env
source env/bin/activate

pip install -r requirements.txt

