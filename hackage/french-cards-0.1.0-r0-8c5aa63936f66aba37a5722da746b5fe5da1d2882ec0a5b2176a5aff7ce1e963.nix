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
      identifier = { name = "french-cards"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Taras Serduke";
      maintainer = "taras.serduke@gmail.com";
      author = "Taras Serduke";
      homepage = "https://github.com/tserduke/french-cards#readme";
      url = "";
      synopsis = "French Playing Cards";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "card" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."french-cards" or (errorHandler.buildDepError "french-cards"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "misc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."french-cards" or (errorHandler.buildDepError "french-cards"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }