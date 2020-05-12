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
      identifier = { name = "japanese-holidays"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 TANIGUCHI Kohei";
      maintainer = "a.d.xvii.kal.mai@gmail.com";
      author = "TANIGUCHI Kohei";
      homepage = "http://github.com/cohei/japanese-holidays#readme";
      url = "";
      synopsis = "Japanese holidays utility";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."japanese-holidays" or (errorHandler.buildDepError "japanese-holidays"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }