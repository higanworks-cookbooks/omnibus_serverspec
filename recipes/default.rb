#
# Cookbook Name:: omnibus_serverspec
# Recipe:: default
#
# Copyright 2014, HiganWorks LLC.
#
node.run_state[:omnibus_serverspec] = Hash.new
node.run_state[:omnibus_serverspec][:archive_file] = node[:omnibus_serverspec][node[:platform_family]][:archive].split('/').last

include_recipe "omnibus_serverspec::#{node[:platform_family]}"

node.run_state[:omnibus_serverspec].delete(:archive_file)
