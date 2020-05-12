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
      identifier = { name = "UISF"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Daniel Winograd-Cort";
      maintainer = "Dan Winograd-Cort <dwc@cs.yale.edu>";
      author = "Dan Winograd-Cort <dwc@cs.yale.edu>";
      homepage = "http://haskell.cs.yale.edu/";
      url = "";
      synopsis = "Library for Arrowized Graphical User Interfaces.";
      description = "UISF is a library for making arrowized GUIs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }