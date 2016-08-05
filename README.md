# kiibohd-dev-vagrant

this is my vagrant file to develop kiibohd controller. [https://github.com/kiibohd/controller] (kiibohd provides their own VM too.)


usage

* in cygwin bash (or git bash)
* % git clone https://github.com/dirty49374/kiibohd-dev-vagrant.git
* edit repo url of Vagrantfile to pointing your repo.
* % vagrant up
* edit build.sh file to build your kll
* % ./build.sh
 
if you want to build firmware with custom kll files, just edit in/ folder and run ./build.sh script (outside vm)
if you want to modify source codes, you can use "vagrant ssh" to go inside vm and edit source.
