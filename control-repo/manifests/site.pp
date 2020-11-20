# autoload roles from the "pp_role" external fact that we set during provisioning
if $facts['pp_role'] {
  include profile::base
  include $facts['pp_role']
}
# otherwise set missing_pp_role to true so we can query for it in puppetdb
else {
  facter::fact { 'missing_pp_role':
    value => true,
  }
}
