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
      specVersion = "2.4";
      identifier = { name = "tinyid"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "maxined@pm.me";
      author = "m4xine";
      homepage = "https://github.com/m4xine/tinyid";
      url = "";
      synopsis = "A secure URL-friendly string ID generator";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
        ];
        buildable = true;
      };
    };
  }