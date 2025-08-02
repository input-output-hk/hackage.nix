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
      specVersion = "3.0";
      identifier = { name = "raytrace"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ombspring@gmail.com";
      author = "Owen Bechtel";
      homepage = "";
      url = "";
      synopsis = "Ray tracing library";
      description = "A Haskell library for rendering images using path tracing. \nInspired by the book series [Ray Tracing in One Weekend](https://raytracing.github.io/) by Peter Shirley and Steve Hollasch.\n\nSee README.md for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."massiv-io" or (errorHandler.buildDepError "massiv-io"))
          (hsPkgs."Color" or (errorHandler.buildDepError "Color"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."massiv-io" or (errorHandler.buildDepError "massiv-io"))
            (hsPkgs."Color" or (errorHandler.buildDepError "Color"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."raytrace" or (errorHandler.buildDepError "raytrace"))
          ];
          buildable = true;
        };
      };
    };
  }