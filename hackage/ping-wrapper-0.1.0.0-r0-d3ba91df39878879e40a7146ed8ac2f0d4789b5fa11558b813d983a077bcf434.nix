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
      identifier = { name = "ping-wrapper"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2017, Fernando Rincon Martin";
      maintainer = "frm.rincon@gmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/frincon/ping-wrapper";
      url = "";
      synopsis = "Haskell Ping wrapper";
      description = "This utility is a wrapper for ping. Currently it is only implemented the\nwin32 and it will raise an exception in other systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ping-parser-attoparsec" or (buildDepError "ping-parser-attoparsec"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."placeholders" or (buildDepError "placeholders"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."either" or (buildDepError "either"))
          ];
        };
      exes = {
        "ping-wrapper" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ping-wrapper" or (buildDepError "ping-wrapper"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          };
        };
      tests = {
        "ping-wrapper-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ping-wrapper" or (buildDepError "ping-wrapper"))
            ];
          };
        };
      };
    }