class apache {
 
  package { ['apache2', 'apache2-mpm-prefork']:
    ensure => present,
	require => Class["system-update"];
  }
 
  service { "apache2":
    ensure => running,
    require => Package["apache2"],
  }
  
  define apache::loadmodule () {
    exec { "/usr/sbin/a2enmod $name" :
      unless => "/bin/readlink -e /etc/apache2/mods-enabled/${name}.load",
      notify => Service[apache2],
	  require => Package["apache2"];
    }
  }
 
  apache::loadmodule{"rewrite":}
}