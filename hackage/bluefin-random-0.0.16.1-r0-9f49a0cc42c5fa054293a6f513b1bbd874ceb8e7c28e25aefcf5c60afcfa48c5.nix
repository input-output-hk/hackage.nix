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
      identifier = { name = "bluefin-random"; version = "0.0.16.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Ellis";
      author = "Tom Ellis";
      homepage = "https://github.com/tomjaguarpaw/bluefin";
      url = "";
      synopsis = "The Bluefin effect system, random generators";
      description = "The Bluefin effect system, random generators";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bluefin" or (errorHandler.buildDepError "bluefin"))
        ];
        buildable = true;
      };
    };
  }