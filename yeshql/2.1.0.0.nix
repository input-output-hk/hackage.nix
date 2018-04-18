{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yeshql";
          version = "2.1.0.0";
        };
        license = "MIT";
        copyright = "2015-2016 Tobias Dammers";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "";
        url = "";
        synopsis = "YesQL-style SQL database abstraction";
        description = "Use quasi-quotations to write SQL in SQL, while at the same time\nadding type annotations to turn them into well-typed Haskell\nfunctions.";
        buildType = "Simple";
      };
      components = {
        yeshql = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.syb-with-class
            hsPkgs.template-haskell
            hsPkgs.convertible
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