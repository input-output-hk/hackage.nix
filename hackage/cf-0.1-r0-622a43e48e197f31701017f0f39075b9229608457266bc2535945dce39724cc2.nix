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
      identifier = { name = "cf"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mitchell.v.riley@gmail.com";
      author = "Mitchell Riley";
      homepage = "http://github.com/mvr/cf";
      url = "";
      synopsis = "Infinite precision arithmetic using continued fractions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }