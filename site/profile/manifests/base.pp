class profile::base {
 file { '/README.PUPPET':
    ensure => file,
    content => "This Server/Service ${fqdn} is under the control of PUPPET\nUsing PUPPET MASTER pmast01.localdomain\n",
    owner   => 'root',
  }
 
  include profile::ntp
  class { 'ntp':
        servers => [ 'server 0.uk.pool.ntp.org', 'server 1.uk.pool.ntp.org', 'server 2.uk.pool.ntp.org', 'server 3.uk.pool.ntp.org' ],
  }
  include profile::ssh_server
  include profile::motd
  include profile::users_and_groups
  
}
