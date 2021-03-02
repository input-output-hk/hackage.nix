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
      identifier = { name = "HPong"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Remco Niemeijer <R.A.Niemeijer@tue.nl>";
      author = "Remco Niemeijer";
      homepage = "";
      url = "";
      synopsis = "2-D single-player game";
      description = "A simple OpenGL Pong game based on GLFW";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpong" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or (errorHandler.buildDepError "data-accessor-template"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
            ];
          buildable = true;
          };
        };
      };
    }