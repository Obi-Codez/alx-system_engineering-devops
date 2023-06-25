#!/usr/bin/env ruby
# Client configuration file (w/ Puppet)

file { '/etc/ssh/ssh_config':
  ensure  => 'present',
  owner   => 'root',
  group   => 'root',
  mode    => '0600',
  content => "
    Host 54.236.101.16
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}
