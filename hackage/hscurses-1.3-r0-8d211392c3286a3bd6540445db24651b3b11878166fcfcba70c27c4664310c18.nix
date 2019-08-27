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
      specVersion = "0";
      identifier = { name = "hscurses"; version = "1.3"; };
      license = "LicenseRef-LGPL";
      copyright = "Stefan Wehr 2004, 2005\nDon Stewart 2004\nTuomo Valkonen 2004\nJohn Meacham 2002-2004";
      maintainer = "Stefan Wehr <http://www.informatik.uni-freiburg.de/~wehr/>";
      author = "John Meacham <john at repetae dot net>\nTuomo Valkonen <tuomov at iki.fi>\nDon Stewart <http://www.cse.unsw.edu.au/~dons>\nStefan Wehr <http://www.informatik.uni-freiburg.de/~wehr/>";
      homepage = "http://www.informatik.uni-freiburg.de/~wehr/haskell/";
      url = "";
      synopsis = "NCurses bindings for Haskell";
      description = "Binding to NCurses, a library of functions that manage an\napplication's display on character-cell terminals. Additionally,\nit contains some basic widgets such as a text input widget and\na table widget.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ];
        };
      };
    }