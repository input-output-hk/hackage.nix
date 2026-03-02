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
      specVersion = "2.4";
      identifier = { name = "screp"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "galen.sprout@gmail.com";
      author = "Galen Sprout";
      homepage = "https://github.com/Ace-Interview-Prep/screp";
      url = "";
      synopsis = "grep-like CLI using Parsec parsers instead of regex";
      description = "screp is a grep-like command-line tool that uses Parsec parser\ncombinators instead of regular expressions for pattern matching.\nWrite patterns using a familiar Haskell-like DSL with combinators\nlike 'some digit', 'string \"TODO\"', or 'manyTill anyChar (string \"END\")'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."scrappy-core" or (errorHandler.buildDepError "scrappy-core"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "screp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."screp" or (errorHandler.buildDepError "screp"))
            (hsPkgs."scrappy-core" or (errorHandler.buildDepError "scrappy-core"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
          buildable = true;
        };
      };
      tests = {
        "screp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."screp" or (errorHandler.buildDepError "screp"))
            (hsPkgs."scrappy-core" or (errorHandler.buildDepError "scrappy-core"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
          buildable = true;
        };
      };
    };
  }