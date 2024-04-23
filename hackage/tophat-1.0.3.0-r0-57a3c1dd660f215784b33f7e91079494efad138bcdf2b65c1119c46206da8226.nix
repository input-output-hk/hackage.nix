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
      identifier = { name = "tophat"; version = "1.0.3.0"; };
      license = "GPL-3.0-only";
      copyright = "2020-21 James Cranch";
      maintainer = "j.d.cranch@sheffield.ac.uk";
      author = "James Cranch";
      homepage = "https://github.com/jcranch/tophat";
      url = "";
      synopsis = "Template-to-Haskell preprocessor, and templating language";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "tophat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tophat" or (errorHandler.buildDepError "tophat"))
          ];
          buildable = true;
        };
      };
      tests = {
        "app-test-bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tophat" or (errorHandler.buildDepError "tophat"))
          ];
          buildable = true;
        };
        "app-test-src" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tophat" or (errorHandler.buildDepError "tophat"))
          ];
          buildable = true;
        };
        "src-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tophat" or (errorHandler.buildDepError "tophat"))
          ];
          buildable = true;
        };
      };
    };
  }