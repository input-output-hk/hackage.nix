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
      identifier = { name = "compose-ltr"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "123.wizek@gmail.com";
      author = "Milán Nagy";
      homepage = "";
      url = "";
      synopsis = "More intuitive, left-to-right function composition.";
      description = "More intuitive, left-to-right function composition.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."compose-ltr" or (errorHandler.buildDepError "compose-ltr"))
            ];
          buildable = true;
          };
        };
      };
    }