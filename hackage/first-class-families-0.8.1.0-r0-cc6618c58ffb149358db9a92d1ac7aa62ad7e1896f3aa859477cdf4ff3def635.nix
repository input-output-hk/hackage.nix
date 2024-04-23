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
      identifier = { name = "first-class-families"; version = "0.8.1.0"; };
      license = "MIT";
      copyright = "2018-2024 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/first-class-families#readme";
      url = "";
      synopsis = "First-class type families";
      description = "A library for type-level programming.\n\nSee README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "fcf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          ];
          buildable = true;
        };
      };
    };
  }