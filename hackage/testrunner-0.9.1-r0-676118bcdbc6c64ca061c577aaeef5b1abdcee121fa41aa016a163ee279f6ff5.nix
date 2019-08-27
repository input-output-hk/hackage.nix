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
      identifier = { name = "testrunner"; version = "0.9.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Reinier Lamers <tux_rocker@reinier.de>";
      author = "Reinier Lamers <tux_rocker@reinier.de>";
      homepage = "";
      url = "";
      synopsis = "Easy unit test driver framework";
      description = "testrunner is a framework to run unit tests. It has the\nfollowing distinguishing features:\n* It can run unit tests in parallel.\n* It can run QuickCheck and HUnit tests as well as simple\nboolean expressions.\n* It comes with a ready-made main function for your unit test\nexecutable.\n* This main function recognizes command-line arguments to select\ntests by name and replay QuickCheck tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      };
    }