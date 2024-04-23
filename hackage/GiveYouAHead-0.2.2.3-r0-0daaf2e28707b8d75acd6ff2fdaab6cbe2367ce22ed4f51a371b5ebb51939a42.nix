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
      identifier = { name = "GiveYouAHead"; version = "0.2.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "qinka@live.com";
      author = "Qinka";
      homepage = "https://github.com/Qinka/GiveYouAHead/";
      url = "";
      synopsis = "to auto-do somethings";
      description = "to auto-do somethings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
        ];
        buildable = true;
      };
    };
  }