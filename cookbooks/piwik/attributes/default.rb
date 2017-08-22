Kernel.load('/vagrant/plugins/piwik.rb')

config_file = File.expand_path('/vagrant/config.rb')
config      = Piwik::Config.new(config_file)

default['nodejs']['install_method']     = 'binary'
default['nodejs']['version']            = '6.11.2'
default['nodejs']['binary']['checksum'] = '1ca74833ff79e6a3a713a88bba8e7f5f5cda5d4008a6ffeb2293a1bf98f83e04'

default['piwik']['vm_type'] = config.vm_type

default['piwik']['docroot']         = '/srv/piwik'
default['piwik']['device_detector'] = '/srv/device-detector'
default['piwik']['map_shaper']      = '/srv/map-shaper'
default['piwik']['mysql_database']  = config.mysql_database
default['piwik']['mysql_password']  = config.mysql_password
default['piwik']['mysql_username']  = config.mysql_username
default['piwik']['server_name']     = config.server_name

default['redisio']['bin_path']        = '/usr/bin'
default['redisio']['package_install'] = true
default['redisio']['version']         = nil

default['php']['directives'] = { :'xdebug.max_nesting_level' => 200 }
