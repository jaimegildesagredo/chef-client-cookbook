#
# Cookbook Name:: chef_client
# Recipe:: default
#
# Copyright 2014, Jaime Gil de Sagredo
#
# All rights reserved - Do Not Redistribute
#

directory node[:chef_client][:log_dir] do
  owner 'root'
  group 'root'
  mode 0755
  recursive true
  action :create
end

if Chef::Config[:solo]
  if node[:chef_client][:sleep_time].nil?
    Chef::Application.fatal!(
      "you must set node[:chef_client][:sleep_time] in chef-solo mode")
  end
else
  node.set_unless[:chef_client][:sleep_time] = ::Random.rand(10)
  node.save
end

cron_d 'chef-client' do
  minute node[:chef_client][:cron][:minute]
  hour node[:chef_client][:cron][:hour]
  command "/bin/sleep #{node[:chef_client][:sleep_time]}; #{node[:chef_client][:bin]} >> #{node[:chef_client][:log_file]} 2>&1"
end
