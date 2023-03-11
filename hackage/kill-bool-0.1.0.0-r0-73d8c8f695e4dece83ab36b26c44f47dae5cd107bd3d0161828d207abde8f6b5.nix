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
      specVersion = "3.0";
      identifier = { name = "kill-bool"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "https://github.com/blackheaven/kill-bool";
      url = "";
      synopsis = "Boolean strong typing";
      description = "Makes sense of your booleans: strong type them!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "kill-bool-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kill-bool" or (errorHandler.buildDepError "kill-bool"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            ];
          buildable = true;
          };
        };
      };
    }