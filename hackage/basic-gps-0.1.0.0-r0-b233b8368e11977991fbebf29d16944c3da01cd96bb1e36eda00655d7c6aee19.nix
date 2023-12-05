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
      identifier = { name = "basic-gps"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ruslanpopov1512@gmail.com";
      author = "InAnYan";
      homepage = "";
      url = "";
      synopsis = "Basic implementation of General Problem Solver algorithm";
      description = "Basic implementation of General Problem Solver algorithm.\nUntested, does not fix many problems.\nThe algorithm is abstract: you can provide your own type of goals and operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }