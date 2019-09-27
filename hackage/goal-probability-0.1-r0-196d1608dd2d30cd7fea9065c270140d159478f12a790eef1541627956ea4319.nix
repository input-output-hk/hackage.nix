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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "goal-probability"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Manifolds of probability distributions";
      description = "Provides probability distributions, exponential families, as well\nas things based on exponential families such as multilayer perceptrons and\nharmoniums (e.g. restricted Boltzmann machines).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."mwc-random-monad" or (buildDepError "mwc-random-monad"))
          (hsPkgs."math-functions" or (buildDepError "math-functions"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."goal-core" or (buildDepError "goal-core"))
          (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
          ];
        buildable = true;
        };
      exes = {
        "cross-entropy-descent" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            ];
          buildable = true;
          };
        "poisson-binomial" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            ];
          buildable = true;
          };
        "univariate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            ];
          buildable = true;
          };
        "multivariate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "transducer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            ];
          buildable = true;
          };
        "transducer-field" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            ];
          buildable = true;
          };
        "divergence" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            ];
          buildable = true;
          };
        "backpropagation" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            ];
          buildable = true;
          };
        };
      };
    }