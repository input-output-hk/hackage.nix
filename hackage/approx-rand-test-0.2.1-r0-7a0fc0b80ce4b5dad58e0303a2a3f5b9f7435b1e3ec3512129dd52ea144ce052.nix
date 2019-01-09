{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { withcairo = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "approx-rand-test"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2012-2013 Daniël de Kok";
      maintainer = "Daniël de Kok <me@danieldk.eu>";
      author = "Daniël de Kok <me@danieldk.eu>";
      homepage = "http://github.com/danieldk/approx-rand-test";
      url = "";
      synopsis = "Approximate randomization test";
      description = "\nFunctions and utilities to perform paired and unpaired approximate\nrandomization tests (Noreen, 1989).\n\nThe utilities can also draw histograms of the applications of the test\nstatistic to the randomized samples. For support for more file formats,\ninstall the package with the @-withCairo@ flag.\n";
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
            (hsPkgs.Chart)
            (hsPkgs.colour)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.data-default-class)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.monad-mersenne-random)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.vector-algorithms)
            ] ++ (if flags.withcairo
            then [ (hsPkgs.Chart-cairo) ]
            else [ (hsPkgs.Chart-diagrams) ]);
          };
        "approx_rand_test_paired" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.approx-rand-test)
            (hsPkgs.Chart)
            (hsPkgs.colour)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.data-default-class)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.monad-mersenne-random)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.vector-algorithms)
            ] ++ (if flags.withcairo
            then [ (hsPkgs.Chart-cairo) ]
            else [ (hsPkgs.Chart-diagrams) ]);
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.approx-rand-test)
            (hsPkgs.mtl)
            (hsPkgs.ieee754)
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