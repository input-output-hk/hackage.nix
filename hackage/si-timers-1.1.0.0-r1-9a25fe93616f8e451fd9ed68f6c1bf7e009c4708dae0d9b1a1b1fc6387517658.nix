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
    flags = { asserts = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "si-timers"; version = "1.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2022-2023 Input Output Global Inc (IOG)";
      maintainer = "Duncan Coutts duncan@well-typed.com, Marcin Szamotulski coot@coot.me";
      author = "Duncan Coutts, Neil Davies, Marcin Szamotulski";
      homepage = "";
      url = "";
      synopsis = "timers using SI units (seconds)";
      description = "Timers using SI units (seconds) which are safe on 32-bit platforms and\ncompatible with [io-sim](https://hackage.haskell.org/package/io-sim).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."si-timers" or (errorHandler.buildDepError "si-timers"))
          ];
          buildable = true;
        };
      };
    };
  }