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
      identifier = { name = "jalaali"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "behrangn@gmail.com";
      author = "Behrang Noruzi Niya";
      homepage = "https://github.com/jalaali/jalaali-hs";
      url = "";
      synopsis = "Convert Jalaali and Gregorian calendar systems to each other";
      description = "A few Haskell functions for converting\nJalaali (Jalali, Persian, Khayyami, Khorshidi, Shamsi) and\nGregorian calendar systems to each other.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }