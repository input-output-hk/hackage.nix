{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-quickcheck";
          version = "0.10";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka <roma@ro-che.info>";
        homepage = "https://github.com/feuerbach/tasty";
        url = "";
        synopsis = "QuickCheck support for the Tasty test framework.";
        description = "QuickCheck support for the Tasty test framework.";
        buildType = "Simple";
      };
      components = {
        tasty-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
            hsPkgs.tasty
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.optparse-applicative
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.pcre-light
            ];
          };
        };
      };
    }