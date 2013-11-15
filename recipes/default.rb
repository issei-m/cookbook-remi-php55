#
# Cookbook Name:: remi-php55
# Recipe:: default
#
# Copyright 2013, Issei Murasawa <issei.m7@gmail.com>
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'yum::remi'

yum_repository "remi-php55" do
  description "Les RPM de remi de PHP 5.5 pour Enterprise Linux #{node['platform_version']} - $basearch"
  key node['yum']['remi']['key']
  mirrorlist node['remi-php55']['url']
  failovermethod "priority"
  includepkgs node['remi-php55']['includepkgs']
  exclude node['remi-php55']['exclude']
  action :create
end
