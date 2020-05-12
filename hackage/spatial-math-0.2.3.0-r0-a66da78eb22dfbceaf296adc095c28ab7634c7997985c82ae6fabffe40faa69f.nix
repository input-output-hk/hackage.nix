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
      identifier = { name = "spatial-math"; version = "0.2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "3d math including quaternions/euler angles/dcms and utility functions";
      description = "This is a port of my 'mathlib' C library: `https://github.com/ghorn/mathlib`";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }