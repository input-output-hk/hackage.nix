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
      identifier = { name = "raytrace"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ombspring@gmail.com";
      author = "Owen Bechtel";
      homepage = "";
      url = "";
      synopsis = "Ray tracing library";
      description = "A Haskell ray tracing library. \nLargely based on the books [Ray Tracing in One Weekend](https://raytracing.github.io/books/RayTracingInOneWeekend.html) \nand [Ray Tracing: The Next Week](https://raytracing.github.io/books/RayTracingTheNextWeek.html) by Peter Shirley.\n\nSee README.md for more information.";
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