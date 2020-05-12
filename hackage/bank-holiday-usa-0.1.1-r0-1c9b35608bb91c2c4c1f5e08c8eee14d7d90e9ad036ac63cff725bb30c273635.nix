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
      identifier = { name = "bank-holiday-usa"; version = "0.1.1"; };
      license = "MIT";
      copyright = "2015 brady.ouren <brady.ouren@gmail.com>";
      maintainer = "brady.ouren <brady.ouren@gmail.com>";
      author = "brady.ouren <brady.ouren@gmail.com>";
      homepage = "https://github.com/tippenein/BankHoliday";
      url = "";
      synopsis = "A library for determining US bank holidays";
      description = "A library for determining US bank holidays";
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
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bank-holiday-usa" or (errorHandler.buildDepError "bank-holiday-usa"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }