{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mysql-simple-quasi";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "";
        url = "";
        synopsis = "Quasi-quoter for use with mysql-simple.";
        description = "See the \"Database.MySQL.Simple.Quasi\" module documentation for more details.";
        buildType = "Simple";
      };
      components = {
        "mysql-simple-quasi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-meta
            hsPkgs.mysql-simple
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "test-qq" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.haskell-src-meta
              hsPkgs.mysql-simple
              hsPkgs.syb
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }