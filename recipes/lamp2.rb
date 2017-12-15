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
package 'mypackages' do
    #allow_downgrade            FalseClass # Yum, RPM packages only
    arch                       ['x86_64', 'x86_64', 'x86_64', 'x86_64']# Yum packages only
    package_name [
        "mariadb",
        "unzip",
        "php56w",
        "php56w-mysql"
       ## Last line without comma
      ] # defaults to 'name' if not specified
    version ["5.5.56-2.el7", '6.0-16.el7', '5.6.32-1.w7', '5.6.32-1.w7']
    action                     :install # defaults to :install if not specified
  end

#yum_package 'mariadb' do
#    action :install
#end
yum_package 'mariadb-server' do
   action :install
end
service 'mariadb' do
    action [:enable, :start]
end
service 'httpd' do
    action [:enable, :start]
end