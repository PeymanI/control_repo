class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4BaidDC2vyxklbvmyET/u66EpU9ENJoJ3Ze2dnM0yFeBv6ESaNYeFn2hu+Y8+OjCleW9ZoVMaaPyM8GQy3NGQJwFAv7Rev47KallCj0peahKSY2rQq4yIysa7XYWYwMOgCwXOYKGsFykeDRYPMci0sr9SV2YvvBX+23iQ/RbdKNBRMXVdhA2A54hCcd7QkM1/Ex/YE66npp//FEUoUia7elykSFPnFnwgHegpMifotGMHKIg4FIjh67JlFWF8ywp5rlMqdqLaM8F/KEIRDviVQkRxmzgxXInsUn6X0GM19qifBKs6gl8ESyzWjlDZft/5VitdhpPV/3zmq0WKmeSh',
  }  
}
