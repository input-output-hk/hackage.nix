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
      identifier = { name = "boolector"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Deian Stefan <deian@cs.ucsd.edu>";
      author = "Dein Stefan, Johannes Waldmann, Armin Biere";
      homepage = "https://github.com/plsyssec/haskell-boolector";
      url = "";
      synopsis = "Haskell bindings for the Boolector SMT solver";
      description = "This library provides a high-level, monadic DSL for writing symbolic\ncomputations atop the Boolector SMT solver (<https://github.com/Boolector/boolector>).\n\nThe API and its description is defined in the \"Boolector\" module.\n\nSeveral examples can be found at: <https://github.com/PLSysSec/haskell-boolector/tree/master/test>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        libs = [ (pkgs."boolector" or (sysDepError "boolector")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "API_Usage_Example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."boolector" or (buildDepError "boolector"))
            ];
          libs = [ (pkgs."boolector" or (sysDepError "boolector")) ];
          buildable = true;
          };
        "Array_Example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."boolector" or (buildDepError "boolector"))
            ];
          libs = [ (pkgs."boolector" or (sysDepError "boolector")) ];
          buildable = true;
          };
        "UF_Example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."boolector" or (buildDepError "boolector"))
            ];
          libs = [ (pkgs."boolector" or (sysDepError "boolector")) ];
          buildable = true;
          };
        "Arith_Example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."boolector" or (buildDepError "boolector"))
            ];
          libs = [ (pkgs."boolector" or (sysDepError "boolector")) ];
          buildable = true;
          };
        "GetSetSymbol_Example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."boolector" or (buildDepError "boolector"))
            ];
          libs = [ (pkgs."boolector" or (sysDepError "boolector")) ];
          buildable = true;
          };
        };
      };
    }