{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "juandelacosa";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "2016, Zalora South East Asia Pte. Ltd";
        maintainer = "Igor Pashev <pashev.igor@gmail.com>";
        author = "Igor Pashev <pashev.igor@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Manage users in MariaDB >= 10.1.1";
        description = "HTTP server for managing MariaDB users.  Designed to work behind\nSproxy and assuming users' logins are their email addresses\n(MariaDB allows up to 80 characters).";
        buildType = "Simple";
      };
      components = {
        exes = {
          juandelacosa = {
            depends  = [
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.docopt
              hsPkgs.entropy
              hsPkgs.http-types
              hsPkgs.mysql
              hsPkgs.mysql-simple
              hsPkgs.network
              hsPkgs.raw-strings-qq
              hsPkgs.resource-pool
              hsPkgs.unix
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }