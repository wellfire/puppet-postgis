/*

==Class: postgis::ubuntu::v8-4

Requires:
 - Class["apt::preferences"]

*/
class postgis::ubuntu::v8-4 inherits postgis::ubuntu::base {

  case $lsbdistcodename {
    "oneiric" : {
      Package["postgresql-postgis"] {
        name => "postgresql-9.1-postgis"
      }
    }

    default: {
      fail "postgresql-postgis 9.1 not available for ${operatingsystem}/${lsbdistcodename}"
    }
  }

}
