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
      specVersion = "1.8";
      identifier = { name = "Commando"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "lyndon@sordina.net";
      author = "Lyndon Maydwell";
      homepage = "https://github.com/sordina/Commando";
      url = "";
      synopsis = "Watch some files; Rerun a command";
      description = "Commando comes in two forms - A library and an executable.\n\n* Executable\n\nWatch a directory, and when changes occur, run a command.\n\nFrom the commandline the program is used like so:\n\n> commando -c echo\n\nThis will watch the current directory, and when an event occurs, pass the serialized\nrepresentation of the event as an argument to `echo`.\n\n* Library\n\nTo use the library just\n\n> import System.Commando\n\nSee the \"System.Commando\" module documentation for more details.\n\nThe Commando executable module is a good example of using Commando as a library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        };
      exes = {
        "commando" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        };
      };
    }