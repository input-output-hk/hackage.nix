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
      specVersion = "1.8";
      identifier = { name = "hspec-smallcheck"; version = "0.4.2"; };
      license = "MIT";
      copyright = "(c) 2013-2015 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "SmallCheck support for the Hspec testing framework";
      description = "SmallCheck support for the Hspec testing framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }