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
      identifier = { name = "lambdacube-bullet"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Csaba Hruska";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska";
      homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
      url = "";
      synopsis = "Example for combining LambdaCube and Bullet";
      description = "Example for combining LambdaCube and Bullet";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lambdacube-bullet-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdacube-engine" or (errorHandler.buildDepError "lambdacube-engine"))
            (hsPkgs."elerea" or (errorHandler.buildDepError "elerea"))
            (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."bullet" or (errorHandler.buildDepError "bullet"))
          ];
          buildable = true;
        };
      };
    };
  }