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
      identifier = { name = "time-locale-vietnamese"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2017 Tung Dao";
      maintainer = "me@tungdao.com";
      author = "Tung Dao";
      homepage = "https://github.com/tungd/time-locale-vietnamese#readme";
      url = "";
      synopsis = "Vietnamese locale for date and time format";
      description = "Vietnamese locale for date and time format";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }