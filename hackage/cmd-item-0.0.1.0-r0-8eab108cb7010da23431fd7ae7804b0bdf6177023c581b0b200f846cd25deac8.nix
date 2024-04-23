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
      identifier = { name = "cmd-item"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Geraud Boyer";
      maintainer = "Geraud Boyer <geraud@gmail.com>";
      author = "Geraud Boyer";
      homepage = "https://github.com/geraud/cmd-item";
      url = "";
      synopsis = "Library to compose and reuse command line fragments";
      description = "Library to compose and reuse command line fragments";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."templater" or (errorHandler.buildDepError "templater"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmd-item" or (errorHandler.buildDepError "cmd-item"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-laws" or (errorHandler.buildDepError "hspec-laws"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }