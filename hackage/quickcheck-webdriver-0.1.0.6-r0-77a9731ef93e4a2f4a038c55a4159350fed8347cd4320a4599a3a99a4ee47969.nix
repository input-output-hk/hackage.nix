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
      identifier = { name = "quickcheck-webdriver"; version = "0.1.0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "christianpbrink@gmail.com";
      author = "Christian Brink";
      homepage = "";
      url = "";
      synopsis = "Utilities for using WebDriver with QuickCheck";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."webdriver" or (errorHandler.buildDepError "webdriver"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }