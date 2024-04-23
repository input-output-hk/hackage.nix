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
    flags = { use_parsec = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghci-history-parser"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "phlummox2 at gmail dot com";
      author = "phlummox";
      homepage = "";
      url = "";
      synopsis = "parse output of ghci \":history\" command";
      description = "I couldn't see a simple parser for the output of the ghci @:history@\ncommand, with few dependencies, so here is one.\n\nIf Parsec is installed, this parser will use it, but if not, it will fall\nback on the parsers in \"Text.ParserCombinators.ReadP\", found in @base@.\n\nFor an example of use, see \"GHCi.History.Parse\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.use_parsec
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "ghci-history-parser-test" = {
          depends = if flags.use_parsec
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
              (hsPkgs."ghci-history-parser" or (errorHandler.buildDepError "ghci-history-parser"))
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
              (hsPkgs."ghci-history-parser" or (errorHandler.buildDepError "ghci-history-parser"))
            ];
          buildable = true;
        };
        "ghci-history-parser-doctest" = {
          depends = if flags.use_parsec
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
              (hsPkgs."ghci-history-parser" or (errorHandler.buildDepError "ghci-history-parser"))
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
              (hsPkgs."ghci-history-parser" or (errorHandler.buildDepError "ghci-history-parser"))
              (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
        };
      };
    };
  }