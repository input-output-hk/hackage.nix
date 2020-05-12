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
      specVersion = "1.4";
      identifier = { name = "Fractaler"; version = "3"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "serprex";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Fractal renderer";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Fractaler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."FTGL" or (errorHandler.buildDepError "FTGL"))
            ];
          buildable = true;
          };
        };
      };
    }