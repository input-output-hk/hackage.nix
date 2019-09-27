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
    flags = { withcairo = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "approx-rand-test"; version = "0.1.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-mersenne-random" or (buildDepError "monad-mersenne-random"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "approx_rand_test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."approx-rand-test" or (buildDepError "approx-rand-test"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or (buildDepError "monad-mersenne-random"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            ] ++ (pkgs.lib).optionals (flags.withcairo) [
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            ];
          buildable = true;
          };
        "approx_rand_test_paired" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."approx-rand-test" or (buildDepError "approx-rand-test"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or (buildDepError "monad-mersenne-random"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            ] ++ (pkgs.lib).optionals (flags.withcairo) [
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."approx-rand-test" or (buildDepError "approx-rand-test"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ieee754" or (buildDepError "ieee754"))
            (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or (buildDepError "monad-mersenne-random"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }