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
      specVersion = "1.2";
      identifier = { name = "hfractal"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisholdsworth@gmail.com";
      author = "Chris Holdsworth";
      homepage = "";
      url = "";
      synopsis = "OpenGL fractal renderer";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hfractal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or (errorHandler.buildDepError "data-accessor-template"))
            (hsPkgs."gd" or (errorHandler.buildDepError "gd"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            ];
          buildable = true;
          };
        };
      };
    }