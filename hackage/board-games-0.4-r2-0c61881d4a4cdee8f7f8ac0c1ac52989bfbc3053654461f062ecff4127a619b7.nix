{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { buildexamples = true; splitbase = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "board-games"; version = "0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/games/";
      url = "";
      synopsis = "Three games for inclusion in a web server";
      description = "Three games that might run as CGI script in a web server:\nConnect Four, Rows&Columns, Mastermind.\nAdditionally there is a CLI-only game: Das verrueckte Labyrinth.\n\nCheck running versions at\n<http://www.henning-thielemann.de/VierGewinnt> and\n<http://www.henning-thielemann.de/ZeilenSpalten>.\n\nYou can build an example web server by installing with\n\n> cabal install board-games -fbuildExamples\n\nThen start the server with\n\n> ./dist/build/board-games/board-games\n\nand play the games in your browser at the URL\n<http://localhost:8080/>.\n\nCurrently the games use German texts.\nI wanted to use gettext, but this is not thread-safe.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."haha" or (errorHandler.buildDepError "haha"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."combinatorial" or (errorHandler.buildDepError "combinatorial"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
      exes = {
        "board-games" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."board-games" or (errorHandler.buildDepError "board-games"))
            (hsPkgs."httpd-shed" or (errorHandler.buildDepError "httpd-shed"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
      tests = {
        "board-games-test" = {
          depends = [
            (hsPkgs."board-games" or (errorHandler.buildDepError "board-games"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "mastermind-strategy" = {
          depends = [
            (hsPkgs."board-games" or (errorHandler.buildDepError "board-games"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "mastermind-benchmark" = {
          depends = [
            (hsPkgs."board-games" or (errorHandler.buildDepError "board-games"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }