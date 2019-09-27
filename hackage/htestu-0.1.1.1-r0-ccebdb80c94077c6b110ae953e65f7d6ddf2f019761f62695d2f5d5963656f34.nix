let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testknownrngs = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "htestu"; version = "0.1.1.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gcc or (pkgs.buildPackages.gcc or (buildToolDepError "gcc")))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "runTestu" = {
          depends = if flags.testknownrngs
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."htestu" or (buildDepError "htestu"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."tf-random" or (buildDepError "tf-random"))
              (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
              (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
              (hsPkgs."primitive" or (buildDepError "primitive"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }