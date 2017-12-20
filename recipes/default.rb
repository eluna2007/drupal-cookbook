#
# Cookbook:: drupal
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
# Cookbook Name:: cis-el7-l1-hardening
# Recipe:: enable_sudo_no_tty
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
if node['os'] == 'linux'
    include_recipe 'selinux::permissive'
end
execute 'Set !require tty for kitchen user' do
    action :run
    command 'echo "Defaults!ALL !requiretty" >> /etc/sudoers.d/kitchen'
    not_if 'grep "Defaults!ALL !requiretty" /etc/sudoers.d/kitchen'
  end
