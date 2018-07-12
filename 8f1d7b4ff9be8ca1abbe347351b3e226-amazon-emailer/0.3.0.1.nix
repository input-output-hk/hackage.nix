{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "amazon-emailer";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "https://github.com/dbp/amazon-emailer";
        url = "";
        synopsis = "A queue daemon for Amazon's SES with a PostgreSQL table as a queue.";
        description = "This application checks every second for messages in a queue table,\nif there exist some that haven't been sent, it grabs\na specified number out (based on what your current send rate is), sends them,\nmarks them as sent, and goes back to sleep.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "amazon-emailer" = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.lifted-base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.postgresql-simple
              hsPkgs.http-conduit
              hsPkgs.mime-mail
              hsPkgs.mime-mail-ses
              hsPkgs.time
            ];
          };
        };
      };
    }