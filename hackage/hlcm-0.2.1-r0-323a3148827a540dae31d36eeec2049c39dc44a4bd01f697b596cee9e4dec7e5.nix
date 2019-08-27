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
      specVersion = "1.2";
      identifier = { name = "hlcm"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexandre.Termier@imag.fr";
      author = "Alexandre Termier";
      homepage = "http://membres-liglab.imag.fr/termier/HLCM/hlcm.html";
      url = "";
      synopsis = "Fast algorithm for mining closed frequent itemsets";
      description = "Closed frequent itemsets are patterns that occur more\nthan a defined threshold in a transactional database.\nThis program is a Haskell implementation of the LCM2\nalgorithm by Takeaki Uno and Hiroki Arimura, which\nis the fastest algorithm for this task.\nThis implementation can make use of several threads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          ];
        };
      exes = {
        "hlcm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring-csv" or (buildDepError "bytestring-csv"))
            ];
          };
        "benchHLCM" = {};
        };
      };
    }