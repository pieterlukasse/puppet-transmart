# Custom class/aspect transmart . 
# Puppet classes could also be called "roles" or "aspects" they
# describe one part of what makes up a system's identity. This class can be used to
# ensure the transmart "aspect" is added/initialized on a server.
#
# This basically means that the pre-requisite aspects are added to the system
# such that a transmart::transmartapp instance can be added .
# 
# NB: Automation of : TODO - add links
#
# == Parameters:
#
# none
#
# == Actions: 
# 
# Prepares server by adding the necessary aspects to the system:
#
#  Apache Tomcat >= 6.x.x
#  Apache Webserver >= 2.x (+mod_proxy, +mod_rewrite UPDATE: mod_rewrite not needed ?)
#  PostgreSQL database server >= 8.4
# 
# Original command: 
#   install tomcat6 postgresql-8.4 apache2 libapache2-mod-proxy-html libapache2-mod-jk
#   
#
class transmart () {

  # install apache aspect:
  class {'apache':  } 
  
  # install tomcat aspect:
  class {'tomcat':  } 
    
  # install postgresql aspect:
  class {'postgresql':  }   
  
  
}