#
# Cookbook:: drupal
# Recipe:: lamp
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
yum_package 'httpd' do
    action :install
end
rpm_package 'epel-release' do
    action :upgrade
    source 'https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm'
end
rpm_package 'webtatic-release' do
    action :upgrade
    source 'https://mirror.webtatic.com/yum/el7/webtatic-release.rpm'
end
yum_package 'php' do
    action :install
end
yum_package 'php-mysql' do
    action :install
end
yum_package 'mariadb' do
    action :install
end
yum_package 'mariadb-server' do
    action :install
end
service 'mariadb' do
    action [:enable, :start]
end
service 'httpd' do
    action [:enable, :start]
end
