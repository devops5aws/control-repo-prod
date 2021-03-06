#
# QA Cathedral Web Server
#

class roles::usw2_qa_caweb {

  #basenode: systems
  include profile::yapstone_base

  #configs
  include profile::yapstone_env
  include profile::yap_qa_lighttpd
  include profile::upstart_lighttpd
  include profile::add_server_host

  #package
  include profile::package::bind_utils
  include profile::package::lighttpd
  include profile::package::yaprpmq_xinetd
  include profile::package::cathedral_webapp_static

  #yumrepo
  include profile::yum_yap_s3
  include profile::yum_tools_s3
}
