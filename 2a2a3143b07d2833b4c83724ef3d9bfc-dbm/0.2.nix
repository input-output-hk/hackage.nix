{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dbm";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Ricky Elrod";
        maintainer = "ricky@elrod.me";
        author = "Ricky Elrod";
        homepage = "https://github.com/relrod/dbm";
        url = "";
        synopsis = "A *simple* database migration tool.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          dbm = {
            depends  = [
              hsPkgs.base
              hsPkgs.direct-sqlite
              hsPkgs.directory
              hsPkgs.ini
              hsPkgs.optparse-applicative
              hsPkgs.sqlite-simple
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }