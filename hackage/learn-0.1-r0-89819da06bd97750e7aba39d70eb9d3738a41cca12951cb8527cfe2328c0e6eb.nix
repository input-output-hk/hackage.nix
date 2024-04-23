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
      specVersion = "1.2";
      identifier = { name = "learn"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aqo2@columbia.edu";
      author = "Augustus Odena";
      homepage = "";
      url = "";
      synopsis = "Learning Algorithms";
      description = "Learning Algorithms";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }