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
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "replace-megaparsec"; version = "1.4.5.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "James Brock <jamesbrock@gmail.com>";
      author = "James Brock <jamesbrock@gmail.com>";
      homepage = "https://github.com/jamesdbrock/replace-megaparsec";
      url = "";
      synopsis = "Find, replace, and split string patterns with Megaparsec parsers (instead of regex)";
      description = "Find text patterns, replace the patterns, split on the patterns. Use\nMegaparsec monadic parsers instead of regular expressions for pattern matching.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
        ];
        buildable = true;
      };
      tests = {
        "test-string" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
        "test-text" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "test-bytestring" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }