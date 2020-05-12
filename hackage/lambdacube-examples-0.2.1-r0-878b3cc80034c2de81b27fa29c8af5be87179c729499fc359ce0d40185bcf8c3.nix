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
      identifier = { name = "lambdacube-examples"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011, Csaba Hruska";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska, Gergely Patai";
      homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
      url = "";
      synopsis = "Examples for LambdaCube";
      description = "Examples for LambdaCube";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdacube-basic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."lambdacube-engine" or (errorHandler.buildDepError "lambdacube-engine"))
            (hsPkgs."elerea" or (errorHandler.buildDepError "elerea"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lambdacube-cameratrack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdacube-engine" or (errorHandler.buildDepError "lambdacube-engine"))
            (hsPkgs."elerea" or (errorHandler.buildDepError "elerea"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        };
      };
    }