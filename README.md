<h2>Vagrant installation instuctions</h2>
<h3>Check the wiki for more information</h3>

<p>install Virtualbox from <a href="https://www.virtualbox.org/‎">link</a><br>
install vagrant from <a href="http://vagrantup.com">link</a><br>
run: [vagrant box add precise32 http://files.vagrantup.com/precise32.box]<br>
[git clone https://github.com/Forthlight/Forthlight-core.git]<br>
cd into the project folder and run [vagrant up]</p><br>
<p>after you entered the /vagrant direcory run [git submodule update --init]

<h2>Useful Vagrant commands (find more in the wiki)</h2>
<p>
Vagrant ssh <br>
vagrant reload (--provision)<br>
vagrant halt / destroy<br>
</p>
Default synced folder is /vagrant on local server, find it by using [cd /vagrant/]<br>


<h4>Update instructions</h4>
<p>run update.sh to update all submodules and/or the dev-enviroment</p>

<p>(bash update.sh or ./update.sh</p>
