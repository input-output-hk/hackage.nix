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
    flags = { buildexamples = true; splitbase = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "board-games"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/games/";
      url = "";
      synopsis = "Three games for inclusion in a web server";
      description = "Three games that might run as CGI script in a web server:\nConnect Four, Rows&Columns, Mastermind\n\nCheck running versions at\n<http://www.henning-thielemann.de/VierGewinnt> and\n<http://www.henning-thielemann.de/ZeilenSpalten>.\n\nYou can build an example web server by installing with\n\n> cabal install board-games -fbuildExamples\n\nThen start the server with\n\n> ./dist/build/board-games/board-games\n\nand play the games in your browser at the URL\n<http://localhost:8080/>.\n\nCurrently the games use German texts.\nI wanted to use gettext, but this is not thread-safe.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."html" or (buildDepError "html"))
          (hsPkgs."cgi" or (buildDepError "cgi"))
          (hsPkgs."non-empty" or (buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = {
        "board-games" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."httpd-shed" or (buildDepError "httpd-shed"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }