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
      identifier = { name = "backprop"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/backprop#readme";
      url = "";
      synopsis = "Heterogeneous automatic differentiation (backpropagation)";
      description = "Write your functions to compute your result, and the library will\nautomatically generate functions to compute your gradient.\n\nImplements heterogeneous reverse-mode automatic differentation, commonly\nknown as \"backpropagation\".\n\nSee <https://github.com/mstksg/backprop#readme README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."type-combinators" or (buildDepError "type-combinators"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      benchmarks = {
        "backprop-mnist-bench" = {
          depends = [
            (hsPkgs."backprop" or (buildDepError "backprop"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mnist-idx" or (buildDepError "mnist-idx"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }