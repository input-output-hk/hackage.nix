{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "approx-rand-test";
          version = "0.0.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright 2012 Daniël de Kok";
        maintainer = "Daniël de Kok <me@danieldk.eu>";
        author = "Daniël de Kok <me@danieldk.eu>";
        homepage = "http://github.com/danieldk/approx-rand-test";
        url = "";
        synopsis = "Approximate randomization test";
        description = "Utility to perform approximate randomization tests.";
        buildType = "Simple";
      };
      components = {
        approx-rand-test = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.mersenne-random-pure64
            hsPkgs.monad-mersenne-random
            hsPkgs.mtl
            hsPkgs.statistics
            hsPkgs.transformers
          ];
        };
        exes = {
          approx_rand_test = {
            depends  = [
              hsPkgs.base
              hsPkgs.approx-rand-test
              hsPkgs.conduit
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.mersenne-random-pure64
              hsPkgs.monad-mersenne-random
              hsPkgs.resourcet
              hsPkgs.statistics
            ];
          };
          approx_rand_test_paired = {
            depends  = [
              hsPkgs.base
              hsPkgs.approx-rand-test
              hsPkgs.conduit
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.mersenne-random-pure64
              hsPkgs.monad-mersenne-random
              hsPkgs.mtl
              hsPkgs.resourcet
              hsPkgs.statistics
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.approx-rand-test
              hsPkgs.mersenne-random-pure64
              hsPkgs.monad-mersenne-random
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }