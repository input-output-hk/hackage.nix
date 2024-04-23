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
      identifier = { name = "json-litobj"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathan.kochems@gmail.com";
      author = "Jonathan Kochems";
      homepage = "https://github.com/jonathankochems/json-litobj";
      url = "";
      synopsis = "Extends Text.JSON to handle literal JS objects.";
      description = "This module extends Text.JSON to enable the decoding of strings containing literal JS objects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
        ];
        buildable = true;
      };
      tests = {
        "test-json-litobj" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."json-litobj" or (errorHandler.buildDepError "json-litobj"))
          ];
          buildable = true;
        };
      };
    };
  }