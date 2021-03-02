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
      specVersion = "1.0";
      identifier = { name = "StrategyLib"; version = "4.0.0.0"; };
      license = "NONE";
      copyright = "";
      maintainer = "Samuel Bronson <naesten@gmail.com>";
      author = "";
      homepage = "http://naesten.dyndns.org:8080/repos/StrategyLib";
      url = "";
      synopsis = "";
      description = "attempt to convert Strafunski's StrategyLib to a heirarchical library";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }