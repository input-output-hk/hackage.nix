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
      identifier = { name = "lens-errors"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/lens-errors#readme";
      url = "";
      synopsis = "Error handling in lens chains";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-errors#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "lens-errors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-errors" or (errorHandler.buildDepError "lens-errors"))
            ];
          buildable = true;
          };
        };
      };
    }