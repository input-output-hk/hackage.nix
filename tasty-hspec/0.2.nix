{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-hspec";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mitchellwrosen@gmail.com";
        author = "Mitchell Rosen";
        homepage = "http://github.com/mitchellwrosen/tasty-hspec";
        url = "";
        synopsis = "Hspec support for the Tasty test framework.";
        description = "Hspec support for the Tasty test framework.";
        buildType = "Simple";
      };
      components = {
        tasty-hspec = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.QuickCheck
            hsPkgs.tasty
            hsPkgs.tasty-smallcheck
            hsPkgs.tasty-quickcheck
            hsPkgs.random
          ];
        };
      };
    }