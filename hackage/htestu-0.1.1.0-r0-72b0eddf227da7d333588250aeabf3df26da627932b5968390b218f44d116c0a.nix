{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testknownrngs = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "htestu"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "snailandmail@gmail.com";
      author = "Nikita Kartashov";
      homepage = "https://github.com/nkartashov/htestu";
      url = "";
      synopsis = "A library for testing correctness of pseudo random number generators in Haskell.";
      description = "HTestU is a library for testing correctness of presudo random number generators (PRNGs) written in Haskell.\nHTestU uses a library TestU01 based on a paper \"TestU01: A C Library for Empirical Testing of Random Number Generators\" by P. L'Ecuyer and R. Simard.\nBasically HTestU performs a wrapping of a member of the RandomGen typeclass (any reasonable PRNG can be made a member of it) and\nfeeds a wrapped generator into a C library which calls the wrapped generator to fill the buffer with pseudo random numbers and then\nperform tests on the generated numbers.\nHTestU offers three batteries: smallCrush, crush and bigCrush (as they were specified in TestU01 paper) and a number of\nstreaming functions which allow one to wrap the PRNG differently for the purpose of testing different patterns of PRNG usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gcc or (pkgs.buildPackages.gcc or ((hsPkgs.pkgs-errors).buildToolDepError "gcc")))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "runTestu" = {
          depends = if flags.testknownrngs
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."htestu" or ((hsPkgs.pkgs-errors).buildDepError "htestu"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))
              (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
              (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
              (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ];
          buildable = true;
          };
        };
      };
    }