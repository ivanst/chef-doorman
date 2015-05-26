#
# Cookbook Name:: doorman
# Recipe:: default
#

include_recipe "nodejs"
package "git"

user "doorman" do
  action :create
  shell "/bin/false"
end

git "/home/doorman/doorman" do
  action :checkout
  repository "https://github.com/movableink/doorman.git"
  user "doorman"
end

nodejs_npm "doorman" do
  path "/home/doorman/doorman"
  json true
  user "doorman"
end

template "/home/doorman/doorman/conf.js" do
  source "conf.js.erb"
  mode 0600
  owner "doorman"
  group "doorman"
end

template "/usr/lib/systemd/system/doorman.service" do
  source "doorman.service.erb"
end

service "doorman" do
  action [ :enable, :start ]
end
