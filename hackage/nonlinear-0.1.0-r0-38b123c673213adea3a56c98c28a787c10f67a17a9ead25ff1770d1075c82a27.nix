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
      identifier = { name = "nonlinear"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Cross Compass Ltd";
      maintainer = "jonas@cross-compass.com";
      author = "Jonas Carpay";
      homepage = "";
      url = "";
      synopsis = "Low-dimensional vectors";
      description = "A lightweight, opinionated clone of the low-dimensional vector parts of linear.\nSee README.md for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."nonlinear" or (errorHandler.buildDepError "nonlinear"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }