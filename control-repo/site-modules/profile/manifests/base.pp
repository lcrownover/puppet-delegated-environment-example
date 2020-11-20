# This is the default profile to be included everywhere
# You can disable pieces of it via a class-like declaration
# or via hiera
# all of the modules included from this profile will live in the control repo,
#   or come from the puppet forge
#
# Some examples of including this class:
#
# to include all the managed defaults
#   include profile::base
#
# you can disable things with a class-like declaration:
#   class { 'profile::base':
#     manage_authentication => false,
#     manage_nfs            => false,
#   }
# or better, via hiera:
#   profile::base::manage_authentication: false
#   profile::base::manage_nfs: false
#
#
class profile::base (
  $manage_authentication  = true,
  $manage_nfs             = true,
) {

  # Authentication module controls sitewide settings such as configuring authconfig/select, setting up PAM, etc
  if $manage_authentication { # default true
    include authentication
  }

  # nfs_client module configures system settings for easy nfs mounting
  if $manage_nfs { # default true
    include nfs_client
  }

}
