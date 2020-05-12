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
      identifier = {
        name = "hspec-structured-formatter";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "";
      maintainer = "flbulgarelli@yahoo.com.ar";
      author = "Franco Leonardo Bulgarelli";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Structured formatted for HSpec";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
        buildable = true;
        };
      };
    }