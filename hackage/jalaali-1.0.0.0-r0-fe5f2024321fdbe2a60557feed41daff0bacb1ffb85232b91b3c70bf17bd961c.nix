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
      specVersion = "1.12";
      identifier = { name = "jalaali"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2020 Behrang Norouzinia";
      maintainer = "behrangn@gmail.com";
      author = "Behrang Norouzinia";
      homepage = "https://github.com/jalaali/jalaali-hs#readme";
      url = "";
      synopsis = "Jalaali calendar systems";
      description = "Functions for working with Jalaali (Jalali, Persian, Khayyami, Khorshidi, Shamsi) calendar systems. Please see the README on GitHub at <https://github.com/jalaali/jalaali-hs#readme>";
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
        "jalaali-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."jalaali" or (errorHandler.buildDepError "jalaali"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "jalaali-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."jalaali" or (errorHandler.buildDepError "jalaali"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }