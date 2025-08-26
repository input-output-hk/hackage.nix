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
      specVersion = "3.0";
      identifier = { name = "bluefin-contrib"; version = "0.0.16.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Ellis";
      author = "Tom Ellis";
      homepage = "https://github.com/tomjaguarpaw/bluefin";
      url = "";
      synopsis = "The Bluefin effect system, user contributions";
      description = "The Bluefin effect system, user contributions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bluefin" or (errorHandler.buildDepError "bluefin"))
        ];
        buildable = true;
      };
    };
  }