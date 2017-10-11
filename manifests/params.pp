class apache::params {
  if $facts['os']['family'] == 'Debian'{
     $package_name = 'apache2'
     $service_name = 'apache2'
  }
  elsif $facts['os']['family'] == 'Redhat' {
     $package_name = 'httpd'
     $service_name = 'httpd'
  }
  else {
     fail("${facts['operatingsystem']} is not supported")
  }
}

