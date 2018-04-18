{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "test-sandbox-hunit";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Benjamin Surma <benjamin.surma@gmail.com>";
        author = "Benjamin Surma <benjamin.surma@gmail.com>";
        homepage = "http://gree.github.io/haskell-test-sandbox/";
        url = "";
        synopsis = "HUnit convenience functions for use with test-sandbox";
        description = "This package provides wrappers around the Test.HUnit unit-test functions,\nallowing them to be used easily in the Test.Sandbox monad provided by the test-sandbox package.";
        buildType = "Simple";
      };
      components = {
        test-sandbox-hunit = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.test-sandbox
            hsPkgs.HUnit
          ];
        };
      };
    }