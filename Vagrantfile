# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "php-app-berkshelf"
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.berkshelf.enabled = true
  config.omnibus.chef_version = "10.24.0"

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      "build_essential" => {
        "compiletime" => true
      },
      "php_app" => {
         "packages" => "php5-fpm, php-pear, php-fpm"
       },
      :varnish => {
        :backend_host => "127.0.0.1"
      },
      :memcached => {
        :memory => 64
      }
    }

    chef.run_list = [
      "recipe[apt]",
      "recipe[build-essential]",
      "recipe[php_app::default]"
    ]
  end
end
