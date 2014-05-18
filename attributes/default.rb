default[:chef_client][:bin] = '/usr/local/bin/chef-client'
default[:chef_client][:sleep_time] = nil
default[:chef_client][:log_dir] = '/var/log/chef'
default[:chef_client][:log_file] = File.join(node[:chef_client][:log_dir], 'chef-client.log')
default[:chef_client][:cron][:minute] = '*/30'
default[:chef_client][:cron][:hour] = '*'
