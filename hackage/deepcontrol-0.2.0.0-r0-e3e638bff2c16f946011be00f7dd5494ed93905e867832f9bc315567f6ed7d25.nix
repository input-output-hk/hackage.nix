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
      identifier = { name = "deepcontrol"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "KONISHI Yohsuke";
      maintainer = "ocean0yohsuke@gmail.com";
      author = "KONISHI Yohsuke";
      homepage = "https://github.com/ocean0yohsuke/deepcontrol";
      url = "";
      synopsis = "Enable more deeper level style of programming than the usual Control.xxx modules express";
      description = "This module enables more deeper level style of programming than the usual Control.xxx modules provides, especially for Applicative and Monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "UnitTest_Applicative" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."deepcontrol" or (errorHandler.buildDepError "deepcontrol"))
          ];
          buildable = true;
        };
        "UnitTest_Monad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."deepcontrol" or (errorHandler.buildDepError "deepcontrol"))
          ];
          buildable = true;
        };
      };
    };
  }