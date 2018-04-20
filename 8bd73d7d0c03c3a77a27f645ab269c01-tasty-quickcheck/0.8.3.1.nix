{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-quickcheck";
          version = "0.8.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka <roma@ro-che.info>";
        homepage = "http://documentup.com/feuerbach/tasty";
        url = "";
        synopsis = "QuickCheck support for the Tasty test framework.";
        description = "QuickCheck support for the Tasty test framework.";
        buildType = "Simple";
      };
      components = {
        tasty-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.tasty
            hsPkgs.QuickCheck
            hsPkgs.tagged
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