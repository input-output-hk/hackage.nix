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
      identifier = { name = "text-display"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hécate Moonlight";
      author = "Hécate Moonlight";
      homepage = "https://github.com/haskell-text/text-display#readme";
      url = "";
      synopsis = "A typeclass for user-facing output";
      description = "The 'Display' typeclass provides a solution for user-facing output that does not have to abide by the rules of the Show typeclass.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "text-display-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            ];
          buildable = true;
          };
        };
      };
    }