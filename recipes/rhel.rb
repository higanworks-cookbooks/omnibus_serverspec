#
# Cookbook Name:: omnibus_serverspec
# Recipe:: rhel
#
# Copyright 2014, HiganWorks LLC.
#

local_cache = ::File.join(Chef::Config[:file_cache_path], node.run_state[:omnibus_serverspec][:archive_file])
remote_file local_cache do
  action :create
  source node[:omnibus_serverspec][:http_baseurl] + node[:omnibus_serverspec][node[:platform_family]][:archive]
end

package 'serverspec' do
  provider Chef::Provider::Package::Rpm
  source local_cache
  action [:install, :upgrade]
end
