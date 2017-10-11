class apache::service (
  String $service_name = $::apache::service_name,
) {

# Service Resource to Ensure service is running
 service { 'apache-service':
   ensure   => running,
   name     => $service_name,
   enable   => true,
     }
}
