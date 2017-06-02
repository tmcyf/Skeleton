#
# Cookbook:: server_users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

users_manage 'sysadmin' do
  group_id 2300
  action [:create]
end