{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hdbc-postgresql-hstore";
          version = "0.0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "aenor.realm@gmail.com";
        author = "Alexander Bondarenko";
        homepage = "http://bitbucket.com/dpwiz/hdbc-postgresql-hstore";
        url = "";
        synopsis = "Manipulate data in PostgreSQL \"hstore\" columns.";
        description = "Some helpers to get and set hstore fields with a Data.Map interface.";
        buildType = "Simple";
      };
      components = {
        hdbc-postgresql-hstore = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.containers
          ];
        };
      };
    }