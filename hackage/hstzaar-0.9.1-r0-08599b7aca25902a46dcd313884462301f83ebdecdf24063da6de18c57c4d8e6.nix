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
      specVersion = "1.6";
      identifier = { name = "hstzaar"; version = "0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pedro Vasconcelos <pbv@fcc.fc.up.pt>";
      author = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
      homepage = "http://www.dcc.fc.up.pt/~pbv/stuff/hstzaar";
      url = "";
      synopsis = "A two player abstract strategy game.";
      description = "HsTZAAR is an implementation of TZAAR ((c) 2007 Kris Brum),\na two player abstract strategy game played on a hexagonal board.\nTZAAR is the the last game in the GIPF game series.\nThis program is based on the (retired) htzaar implementation\nby Tom Hawkins <tomahawkins@gmail.com>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hstzaar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."xml" or (buildDepError "xml"))
            ];
          };
        };
      };
    }