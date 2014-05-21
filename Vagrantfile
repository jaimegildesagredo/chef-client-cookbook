# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'precise-server-amd64'

  config.vm.provision :shell, inline: '/opt/ruby/bin/gem install chef --no-ri --no-rdoc'

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = '../'
    chef.roles_path = '../../roles'
    chef.data_bags_path = '../../data_bags'

    chef.add_recipe 'chef_client'

    chef.json = {
      :chef_client => {
        :bin => '/opt/ruby/bin/chef-client',
        #:sleep_time => 3
      }
    }
  end
end
