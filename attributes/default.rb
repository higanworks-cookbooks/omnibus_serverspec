default[:omnibus_serverspec][:http_proxy] = nil
default[:omnibus_serverspec][:http_baseurl] = 'https://s3.amazonaws.com/omnibus-serverspec/'


## remote_file_locations
default[:omnibus_serverspec][:rhel] = {
  archive: 'el/6.5/x86_64/serverspec-0.15.3_01-1.el6.x86_64.rpm'
}

default[:omnibus_serverspec][:debian] = {
  archive: 'ubuntu/12.04/x86_64/serverspec_0.15.3-1_amd64.deb'
}
