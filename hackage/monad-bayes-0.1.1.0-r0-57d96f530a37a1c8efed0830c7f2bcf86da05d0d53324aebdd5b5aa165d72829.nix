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
    flags = { dev = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "monad-bayes"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2015-2020 Adam Scibior";
      maintainer = "leonhard.markert@tweag.io";
      author = "Adam Scibior <adscib@gmail.com>";
      homepage = "http://github.com/tweag/monad-bayes#readme";
      url = "";
      synopsis = "A library for probabilistic programming.";
      description = "A library for probabilistic programming using probability monads. The\nemphasis is on composition of inference algorithms implemented in\nterms of monad transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."ieee754" or (buildDepError "ieee754"))
          (hsPkgs."log-domain" or (buildDepError "log-domain"))
          (hsPkgs."math-functions" or (buildDepError "math-functions"))
          (hsPkgs."monad-coroutine" or (buildDepError "monad-coroutine"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."log-domain" or (buildDepError "log-domain"))
            (hsPkgs."monad-bayes" or (buildDepError "monad-bayes"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "monad-bayes-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."ieee754" or (buildDepError "ieee754"))
            (hsPkgs."log-domain" or (buildDepError "log-domain"))
            (hsPkgs."math-functions" or (buildDepError "math-functions"))
            (hsPkgs."monad-bayes" or (buildDepError "monad-bayes"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "ssm-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monad-bayes" or (buildDepError "monad-bayes"))
            ];
          buildable = true;
          };
        "speed-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."log-domain" or (buildDepError "log-domain"))
            (hsPkgs."monad-bayes" or (buildDepError "monad-bayes"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }