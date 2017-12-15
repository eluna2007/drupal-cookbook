packages = []

case node[:platform_family]
when 'rhel' #based on your OS
  packages = [
    "mysql",
    "unzip",
    "php56w",
    "php56w-mbstring",
    "php56w-gd",
    "php56w-xml",
    "php56w-fpm",
    "php56w-mysql",
    "php56w-pdo",
    "php56w-opcache",
    "php56w-pecl-memcache",
    "php56w-pecl-imagick-devel",
    "php56w-imap",
    "php56w-ldap",
    "php56w-mcrypt",
    "php56w-oauth",
    "php56w-pspell",
    "php56w-soap",
    "php56w-ssh2",
    "php56w-tidy",
    "php56w-uploadprogress",
    "php56w-xmlrpc",
    "php56w-yaml",
    "mod_ssl" ## Last line without comma
  ]
end

default[:drupal][:packages] = packages






