class profile::base {
 file { '/README.PUPPET':
    ensure => file,
    content => "This Server/Service ${fqdn} is under the control of PUPPET\nUsing PUPPET MASTER pmast01.localdomain\n",
    owner   => 'root',
  }
 
 
  include profile::ssh_server
  include profile::motd
  include profile::users_and_groups
  

}
