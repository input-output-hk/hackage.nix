{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yeshql";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2015-2016 Tobias Dammers";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "";
        url = "";
        synopsis = "YesQL-style SQL database abstraction";
        description = "";
        buildType = "Simple";
      };
      components = {
        yeshql = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.HDBC
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.yeshql
              hsPkgs.stm
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.HDBC
            ];
          };
        };
      };
    }