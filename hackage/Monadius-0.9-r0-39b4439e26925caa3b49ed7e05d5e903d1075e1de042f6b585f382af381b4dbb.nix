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
      identifier = { name = "Monadius"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>";
      author = "Hideyuki Tanaka & Takayuki Muranushi";
      homepage = "";
      url = "";
      synopsis = "2-D arcade scroller";
      description = "A fast-paced 2-D scrolling vector graphics clone of the arcade game Gradius.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "monadius" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }