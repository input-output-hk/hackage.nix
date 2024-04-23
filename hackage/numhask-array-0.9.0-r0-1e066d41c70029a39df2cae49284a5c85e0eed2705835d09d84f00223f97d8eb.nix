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
      identifier = { name = "numhask-array"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask-array#readme";
      url = "";
      synopsis = "Multi-dimensional array interface for numhask.";
      description = "This package provides an interface into the [numhask](https://hackage.haskell.org/package/numhask) API, and both type- and value-level shape manipulation routines.\n\n== Usage\n\n>>> {-# LANGUAGE RebindableSyntax #-}\n>>> import NumHask.Prelude\n>>> import NumHask.Array\n\nIn situations where shape is only known at runtime, a clear module configuration is:\n\n>>> import NumHask.Array.Shape\n>>> import qualified NumHask.Array.Fixed as F\n>>> import qualified NumHask.Array.Dynamic as D";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."numhask-array" or (errorHandler.buildDepError "numhask-array"))
          ];
          buildable = true;
        };
      };
    };
  }