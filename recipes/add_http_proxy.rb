#
# Cookbook Name:: omnibus_serverspec
# Recipe:: add_http_proxy
#
# Copyright 2014, HiganWorks LLC.
#

Chef::Config[:http_proxy] = node[:omnibus_serverspec][:http_proxy]
