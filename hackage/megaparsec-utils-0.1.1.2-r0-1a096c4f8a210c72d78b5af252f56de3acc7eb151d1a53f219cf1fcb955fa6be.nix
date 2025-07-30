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
      specVersion = "1.12";
      identifier = { name = "megaparsec-utils"; version = "0.1.1.2"; };
      license = "GPL-3.0-only";
      copyright = "2024 drlkf";
      maintainer = "drlkf@drlkf.net";
      author = "drlkf";
      homepage = "https://github.com/drlkf/megaparsec-utils";
      url = "";
      synopsis = "Parsers and utilities for the Megaparsec library.";
      description = "Common parsers and utilities to use with the Megaparsec library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
        ];
        buildable = true;
      };
      tests = {
        "megaparsec-utils-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."megaparsec-utils" or (errorHandler.buildDepError "megaparsec-utils"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
      };
    };
  }