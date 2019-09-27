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
      specVersion = "1.8";
      identifier = { name = "grenade"; version = "0.1.0"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2016-2017 Huw Campbell.";
      maintainer = "Huw Campbell <huw.campbell@gmail.com>";
      author = "Huw Campbell <huw.campbell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Practical Deep Learning in Haskell";
      description = "Grenade is a composable, dependently typed, practical, and fast\nrecurrent neural network library for precise specifications and\ncomplex deep neural networks in Haskell.\n\nGrenade provides an API for composing layers of a neural network\ninto a sequence parallel graph in a type safe manner; running\nnetworks with reverse automatic differentiation to calculate their\ngradients; and applying gradient decent for learning.\n\nDocumentation and examples are available on github\n<https://github.com/HuwCampbell/grenade>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."grenade" or (buildDepError "grenade"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."typelits-witnesses" or (buildDepError "typelits-witnesses"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."grenade" or (buildDepError "grenade"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        "bench-lstm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."grenade" or (buildDepError "grenade"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        };
      };
    }