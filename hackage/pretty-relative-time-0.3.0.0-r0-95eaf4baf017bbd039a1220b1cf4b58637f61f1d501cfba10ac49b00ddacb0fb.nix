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
      identifier = { name = "pretty-relative-time"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018-2021 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/pretty-relative-time#readme";
      url = "";
      synopsis = "Pretty relative time";
      description = "Please see the README on Github at <https://github.com/NorfairKing/pretty-relative-time#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          (hsPkgs."validity-time" or (errorHandler.buildDepError "validity-time"))
        ];
        buildable = true;
      };
      tests = {
        "pretty-relative-time-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-time" or (errorHandler.buildDepError "genvalidity-time"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pretty-relative-time" or (errorHandler.buildDepError "pretty-relative-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
            (hsPkgs."validity-time" or (errorHandler.buildDepError "validity-time"))
          ];
          buildable = true;
        };
      };
    };
  }