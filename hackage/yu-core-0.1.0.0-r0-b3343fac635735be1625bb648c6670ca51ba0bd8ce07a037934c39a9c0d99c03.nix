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
      identifier = { name = "yu-core"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017 Johann Lee";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "The core of Yu.";
      description = "The core module for Yu.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yu-utils" or (errorHandler.buildDepError "yu-utils"))
          (hsPkgs."yu-auth" or (errorHandler.buildDepError "yu-auth"))
        ];
        buildable = true;
      };
      tests = {
        "test-mvc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."yu-utils" or (errorHandler.buildDepError "yu-utils"))
            (hsPkgs."yu-core" or (errorHandler.buildDepError "yu-core"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          ];
          buildable = true;
        };
      };
    };
  }