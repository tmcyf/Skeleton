name 'server_users'
maintainer 'TMCYF'
maintainer_email 'admin@tmcyf.org'
license 'All Rights Reserved'
description 'Installs and configures users on the server'
long_description 'Installs and configures users on the server'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'users'
depends 'sudo'
