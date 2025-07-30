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
      identifier = { name = "megaparsec-time"; version = "0.2.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2025 drlkf";
      maintainer = "drlkf@drlkf.net";
      author = "drlkf";
      homepage = "https://github.com/drlkf/megaparsec-time";
      url = "";
      synopsis = "Parsers and utilities for the Megaparsec library.";
      description = "Common parsers and utilities to use with the Megaparsec library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."megaparsec-utils" or (errorHandler.buildDepError "megaparsec-utils"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "megaparsec-time-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."megaparsec-time" or (errorHandler.buildDepError "megaparsec-time"))
            (hsPkgs."megaparsec-utils" or (errorHandler.buildDepError "megaparsec-utils"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }