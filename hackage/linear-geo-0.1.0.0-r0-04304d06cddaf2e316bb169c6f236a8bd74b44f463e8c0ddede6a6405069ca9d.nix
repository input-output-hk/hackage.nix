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
      specVersion = "2.4";
      identifier = { name = "linear-geo"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Travis Whitaker 2023";
      maintainer = "pi.boy.travis@gmail.com";
      author = "Travis Whitaker";
      homepage = "https://github.com/TravisWhitaker/linear-geo";
      url = "";
      synopsis = "Geographic coordinates, built on the linear package.";
      description = "Geographic coordinates, built on the linear package.\n\nThis package provides types and functions for dealing with coordinates in\ngeodetic, ECEF, and ENU coordinate systems. A particular emphasis is placed\non numerical stability, especially for complex conversions like converting\nbetween geodetic and ECEF coordinates. However, not every part of every\nfunction has machine checked for numerical stability.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "props" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."linear-geo" or (errorHandler.buildDepError "linear-geo"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          ];
          buildable = true;
        };
      };
    };
  }