class profile::motd {
  file { '/etc/motd':
    ensure => file,
    content => "Property of XXXXX\n\nUnauthorised Access Perhibited\n",
    owner   => 'root',
    group   => 'root',
    mode    => '644',
}
