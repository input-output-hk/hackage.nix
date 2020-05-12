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
      specVersion = "1.10";
      identifier = { name = "semiring-simple"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pharpend2@gmail.com";
      author = "Thomas Wilke, Frank Huch, Sebastian Fischer, Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A module for dealing with semirings.";
      description = "Semirings are like normal rings, except you can't subtract. This library provides a type class for semirings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }