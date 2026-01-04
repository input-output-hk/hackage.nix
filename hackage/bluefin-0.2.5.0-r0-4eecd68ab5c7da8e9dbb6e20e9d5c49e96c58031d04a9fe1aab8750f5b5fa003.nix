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
      identifier = { name = "bluefin"; version = "0.2.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Ellis";
      author = "Tom Ellis";
      homepage = "https://github.com/tomjaguarpaw/bluefin";
      url = "";
      synopsis = "The Bluefin effect system";
      description = "The Bluefin effect system";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bluefin-internal" or (errorHandler.buildDepError "bluefin-internal"))
        ];
        buildable = true;
      };
    };
  }