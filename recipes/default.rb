#
# Cookbook Name:: chef_task_1
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# create user "devops"
user node['chef_task_1']['user'] do
  comment 'devops user'
  home '/home/devops'
  shell '/bin/bash'
  action :create
  passwd '$1$MVV1btBB$KCbKYrqlTulJBJbYd1d7d0'
end

# create group "devops"
group node['chef_task_1']['group'] do
  action :create
  members node['chef_task_1']['user']
end

# create file
file '/opt/hello' do
  content 'Hello DevOps!'
  mode '0664'
  owner node['chef_task_1']['user']
  group node['chef_task_1']['group']
end
