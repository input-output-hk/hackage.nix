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
      identifier = { name = "harmony"; version = "0.1.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "santimunin@gmail.com";
      author = "Santiago Munín";
      homepage = "";
      url = "";
      synopsis = "A web service specification compiler that generates implementation and tests.";
      description = "This application defines a specification language for web services and reads\nit in order to generate implementation, tests, clients, etc...";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."BNFC" or (errorHandler.buildDepError "BNFC"))
          (hsPkgs."hastache" or (errorHandler.buildDepError "hastache"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
      exes = {
        "harmony" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."harmony" or (errorHandler.buildDepError "harmony"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."harmony" or (errorHandler.buildDepError "harmony"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
          buildable = true;
        };
        "hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = true;
        };
      };
    };
  }