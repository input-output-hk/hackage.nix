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
      identifier = { name = "tak"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "henry@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "http://bitbucket.org/sffubs/tak";
      url = "";
      synopsis = "A library encoding the rules of Tak, and a playtak.com client.";
      description = "Tak is a new abstract strategy game, devised by James Earnest (of Cheapass\nGames), and Patrick Rothfuss, author of The Wise Man's Fear, where the game of\nTak was first mentioned.\nThis is a library which encodes the rules of Tak, provides a client for the\npopular playtak.com server, and contributes an AI tak bot for the same server.\nThis package provides 3 top level modules:\nTak encodes the rules of Tak, as a game tree, containing all possible moves.\nThis tree is extremely large, so be careful not to strictly evaluate it!\nPlayTak provides functions for maintaining a connection to playtak.com, receiving\nmessages, and sending commands. This could be used to implement a\nfully-fledged game client, or a playtak.com bot.\nPlayTakBot is a framework to make it easy to build a playtak.com bot. It will\nmaintain a connection, seek games, and create a game tree. The bot implementor\njust needs to provide functions to evaluate a game state, and choose the next\nplay from each game state.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }