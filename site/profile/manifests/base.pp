class profile::base {
 file { '/README.PUPPET':
    ensure => file,
    content => "This Server/Service ${fqdn} is under the control of PUPPET\n",
    owner   => 'root',
  }
 
 user {'admin':
    ensure => present
  }
  
  include profile::ssh_server

}
