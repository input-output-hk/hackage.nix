{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "test-sandbox-quickcheck";
          version = "0.0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Benjamin Surma <benjamin.surma@gree.net>";
        author = "Benjamin Surma <benjamin.surma@gree.net>";
        homepage = "http://gree.github.io/haskell-test-sandbox/";
        url = "";
        synopsis = "QuickCheck convenience functions for use with test-sandbox";
        description = "This package provides wrappers around the Test.QuickCheck property testing functions,\nallowing them to be used easily in the Test.Sandbox monad provided by the test-sandbox package.";
        buildType = "Simple";
      };
      components = {
        "test-sandbox-quickcheck" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.test-sandbox
            hsPkgs.QuickCheck
          ];
        };
      };
    }