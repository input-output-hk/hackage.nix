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
      specVersion = "1.10";
      identifier = { name = "Haggressive"; version = "0.1.0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "volker.strobel87@gmail.com";
      author = "Volker Strobel";
      homepage = "https://github.com/Pold87/Haggressive";
      url = "";
      synopsis = "Aggression analysis for Tweets on Twitter";
      description = "Aggression analysis for Tweets on Twitter";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Haggressive" or (errorHandler.buildDepError "Haggressive"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
          (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Haggressive" or (errorHandler.buildDepError "Haggressive"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          ];
          buildable = true;
        };
      };
    };
  }