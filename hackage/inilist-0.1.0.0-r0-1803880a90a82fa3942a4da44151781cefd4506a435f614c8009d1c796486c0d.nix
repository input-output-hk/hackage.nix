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
      identifier = { name = "inilist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwm@mired.org";
      author = "Mike Meyer";
      homepage = "https://chiselapp.com/user/mwm/repository/inilist";
      url = "";
      synopsis = "Processing for .ini files with duplicate sections and options";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "inilist-unittest" = {
          depends = [
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inilist" or (errorHandler.buildDepError "inilist"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }