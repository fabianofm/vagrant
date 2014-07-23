class mysql{

  package { "mysql-server":
    ensure => present,
  }
  
  package { "mysql-client":
    ensure => present,
  }
 
  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }
  
  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -p123 status',
    command => "mysqladmin -uroot password 123",
    path    => ['/bin', '/usr/bin'],
    require => Service['mysql'];
  }
}