{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgresql-simple-url";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright © 2014 Futurice OY, Oleg Grenrus";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus";
        homepage = "https://github.com/futurice/pulmurice-heroku";
        url = "";
        synopsis = "PostgreSQL";
        description = "";
        buildType = "Simple";
      };
      components = {
        "postgresql-simple-url" = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
            hsPkgs.network-uri
            hsPkgs.postgresql-simple
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.postgresql-simple
              hsPkgs.postgresql-simple-url
            ];
          };
        };
      };
    }