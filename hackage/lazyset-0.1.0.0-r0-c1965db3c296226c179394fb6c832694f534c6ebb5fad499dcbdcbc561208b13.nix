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
      identifier = { name = "lazyset"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "carlosfreund@googlemail.com";
      author = "Carlos Freund";
      homepage = "https://github.com/happyherp/lazyset";
      url = "";
      synopsis = "Set and Map from lazy/infinite lists.";
      description = "A Set and Map implementation that is completly lazy and works for infinite sets and maps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      tests = {
        "settest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
            ];
          };
        "maptest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
            (hsPkgs."timeit" or (buildDepError "timeit"))
            ];
          };
        };
      };
    }