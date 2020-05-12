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
      identifier = { name = "bordacount"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/bordacount#readme";
      url = "";
      synopsis = "Implementation of the Borda count election method.";
      description = "Implementation of the Borda count election method, optionally with\ndifferent weights for different participants.\n\nSee <https://en.wikipedia.org/wiki/Borda_count>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "bordacount-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bordacount" or (errorHandler.buildDepError "bordacount"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }