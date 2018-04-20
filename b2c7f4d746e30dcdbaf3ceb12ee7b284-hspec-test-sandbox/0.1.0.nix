{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-test-sandbox";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "junji.hashimoto@gmail.com";
        author = "Junji Hashimoto";
        homepage = "";
        url = "";
        synopsis = "Hspec convenience functions for use with test-sandbox";
        description = "This package provides useful functions to write around the Test.Hspec unit-test functions,\nallowing them to be used easily in the Test.Sandbox monad provided by the test-sandbox package.";
        buildType = "Simple";
      };
      components = {
        hspec-test-sandbox = {
          depends  = [
            hsPkgs.base
            hsPkgs.test-sandbox
            hsPkgs.hspec-core
            hsPkgs.hspec
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-sandbox
              hsPkgs.hspec
              hsPkgs.hspec-test-sandbox
            ];
          };
        };
      };
    }