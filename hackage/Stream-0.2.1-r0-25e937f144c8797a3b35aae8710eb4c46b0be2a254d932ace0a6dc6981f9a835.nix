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
      identifier = { name = "Stream"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wouter Swierstra <wss@cs.nott.ac.uk>";
      author = "Wouter Swierstra";
      homepage = "http://www.cs.nott.ac.uk/~wss/repos/Stream/dist/doc/html/";
      url = "";
      synopsis = "A library for manipulating infinite lists.";
      description = "This package implements functions, analogous\nto those from Data.List, to create and manipulate infinite lists.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }