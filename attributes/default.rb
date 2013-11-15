#
# Cookbook Name:: remi-php55
# Attributes:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

case node['platform']
when "fedora"
  default['remi-php55']['url'] = "http://rpms.famillecollet.com/fedora/#{node['platform_version'].to_i}/php55/mirror"
else
  default['remi-php55']['url'] = "http://rpms.famillecollet.com/enterprise/#{node['platform_version'].to_i}/php55/mirror"
end

default['remi-php55']['key'] = "RPM-GPG-KEY-remi"
default['remi-php55']['key_url'] = "http://rpms.famillecollet.com/#{node['remi-php55']['key']}"
default['remi-php55']['includepkgs'] = nil
default['remi-php55']['exclude'] = nil
