class apache::config {
  file { '/var/www/html/index.html':   ### This is basically the path at client location
   ensure => 'file',
   mode   => '0644',
    owner  => 'root',
    group  => 'root',
    content => template("apache/index.html.erb"),
    #source => 'puppet:///modules/apache/index.html',   ### the content of index.html is taken from the source
  }
}

