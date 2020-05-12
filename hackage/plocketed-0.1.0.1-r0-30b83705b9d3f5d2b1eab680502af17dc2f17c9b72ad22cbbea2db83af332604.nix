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
      identifier = { name = "plocketed"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "sen.cenan@gmail.com";
      author = "sen.cenan@gmail.com";
      homepage = "";
      url = "";
      synopsis = "plot data from stdin through socketed";
      description = "plot data from stdin through socketed";
      buildType = "Simple";
      };
    components = {
      exes = {
        "plocketed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."socketed" or (errorHandler.buildDepError "socketed"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }