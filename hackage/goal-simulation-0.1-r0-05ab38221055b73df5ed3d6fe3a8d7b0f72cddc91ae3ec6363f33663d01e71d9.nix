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
      identifier = { name = "goal-simulation"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Mealy based simulation tools";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."goal-core" or (buildDepError "goal-core"))
          (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
          (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
          (hsPkgs."machines" or (buildDepError "machines"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."clock" or (buildDepError "clock"))
          ];
        buildable = true;
        };
      exes = {
        "rk4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "markov-chain" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        "ito-process" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        "pendulum-vector-field" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "pendulum-simulation" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "pendulum-filter-histogram" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "pendulum-filter-simulation" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "pendulum-filter-train" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "pendulum-filter-code" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goal-core" or (buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (buildDepError "goal-simulation"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }