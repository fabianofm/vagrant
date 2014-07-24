class system-update {


  exec {
	'apt-get update':
		command => 'apt-get update && apt-get upgrade -y',
		timeout => 0,
	}

}