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
      identifier = { name = "platinum-parsing"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017, Patrick Champion";
      maintainer = "chlablak@gmail.com";
      author = "chlablak";
      homepage = "https://github.com/chlablak/platinum-parsing";
      url = "";
      synopsis = "General Framework for compiler development.";
      description = "Platinum Parsing provides many tools for the development of compiler (including transpiler or interpreter), based on the well-known Dragon Book (2nd edition). This package is in progress, please take a look at the github repository for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."HStringTemplate" or (buildDepError "HStringTemplate"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."binary" or (buildDepError "binary"))
          ];
        };
      exes = {
        "pp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."platinum-parsing" or (buildDepError "platinum-parsing"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."data-hash" or (buildDepError "data-hash"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "pp-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."platinum-parsing" or (buildDepError "platinum-parsing"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            ];
          };
        };
      };
    }