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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "approx_rand_test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."approx-rand-test" or ((hsPkgs.pkgs-errors).buildDepError "approx-rand-test"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
            ] ++ (if flags.withcairo
            then [
              (hsPkgs."Chart-cairo" or ((hsPkgs.pkgs-errors).buildDepError "Chart-cairo"))
              ]
            else [
              (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
              ]);
          buildable = true;
          };
        "approx_rand_test_paired" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."approx-rand-test" or ((hsPkgs.pkgs-errors).buildDepError "approx-rand-test"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
            ] ++ (if flags.withcairo
            then [
              (hsPkgs."Chart-cairo" or ((hsPkgs.pkgs-errors).buildDepError "Chart-cairo"))
              ]
            else [
              (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."approx-rand-test" or ((hsPkgs.pkgs-errors).buildDepError "approx-rand-test"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }