name             'php_app'
maintainer       'Rackspace Hosting'
maintainer_email 'ryan.walker@rackspace.com'
license          'Apache 2.0'
description      'Installs/Configures php_app'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

%w{application application_php apache2 deploy_wrapper firewall php ssh_known_hosts varnish}.each do |cookbook|
  depends cookbook
end
