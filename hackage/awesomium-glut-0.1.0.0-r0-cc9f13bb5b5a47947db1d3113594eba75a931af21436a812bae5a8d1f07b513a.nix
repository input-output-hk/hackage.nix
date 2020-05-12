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
      specVersion = "1.8";
      identifier = { name = "awesomium-glut"; version = "0.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012 Maksymilian Owsianny";
      maintainer = "Maksymilian.Owsianny+AwesomiumGLUT@gmail.com";
      author = "Maksymilian Owsianny";
      homepage = "";
      url = "";
      synopsis = "Utilities for using Awesomium with GLUT.";
      description = "This package contains utilities for integrating\nAwesomium with GLUT (Mainly functions for\nmarshalling input).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."awesomium-raw" or (errorHandler.buildDepError "awesomium-raw"))
          (hsPkgs."awesomium" or (errorHandler.buildDepError "awesomium"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          ];
        buildable = true;
        };
      };
    }