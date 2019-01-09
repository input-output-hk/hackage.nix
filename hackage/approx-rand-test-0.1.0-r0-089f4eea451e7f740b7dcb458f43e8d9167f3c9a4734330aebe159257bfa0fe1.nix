{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { withcairo = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "approx-rand-test"; version = "0.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.monad-mersenne-random)
          (hsPkgs.mtl)
          (hsPkgs.statistics)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "approx_rand_test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.approx-rand-test)
            (hsPkgs.conduit)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.monad-mersenne-random)
            (hsPkgs.statistics)
            ] ++ (pkgs.lib).optionals (flags.withcairo) [
            (hsPkgs.Chart)
            (hsPkgs.colour)
            (hsPkgs.data-accessor)
            (hsPkgs.filepath)
            (hsPkgs.vector-algorithms)
            ];
          };
        "approx_rand_test_paired" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.approx-rand-test)
            (hsPkgs.conduit)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.monad-mersenne-random)
            (hsPkgs.mtl)
            (hsPkgs.statistics)
            ] ++ (pkgs.lib).optionals (flags.withcairo) [
            (hsPkgs.Chart)
            (hsPkgs.colour)
            (hsPkgs.data-accessor)
            (hsPkgs.filepath)
            (hsPkgs.vector-algorithms)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.approx-rand-test)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.monad-mersenne-random)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }