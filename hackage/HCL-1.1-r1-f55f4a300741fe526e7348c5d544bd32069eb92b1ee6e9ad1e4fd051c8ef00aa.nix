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
      specVersion = "0";
      identifier = { name = "HCL"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgbailey _ gmail _ com";
      author = "Justin Bailey";
      homepage = "";
      url = "";
      synopsis = "High-level library for building command line interfaces.";
      description = "This module provides a set of functions for building simple command-line\ninterfaces. It allows interfaces which collect values (such as Integers,\nDates, or other structured values), build lists of values, and use simple\nmenus. It is not intended to build complex interfaces with full cursor\ncontrol. It is oriented towards line-based interfaces.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "hangman" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }