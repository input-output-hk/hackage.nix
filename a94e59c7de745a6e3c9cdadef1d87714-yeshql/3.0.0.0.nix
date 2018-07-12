{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yeshql";
          version = "3.0.0.0";
        };
        license = "MIT";
        copyright = "2015-2016 Tobias Dammers";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "";
        url = "";
        synopsis = "YesQL-style SQL database abstraction";
        description = "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while\nadding type annotations to turn SQL into well-typed Haskell\nfunctions.";
        buildType = "Simple";
      };
      components = {
        "yeshql" = {
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
          "tests" = {
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