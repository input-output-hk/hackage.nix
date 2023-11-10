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
      identifier = { name = "dahdit-test"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/dahdit-test#readme";
      url = "";
      synopsis = "Test utils for Dahdit serde";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/dahdit-test#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dahdit" or (errorHandler.buildDepError "dahdit"))
          (hsPkgs."daytripper" or (errorHandler.buildDepError "daytripper"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "dahdit-test-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dahdit" or (errorHandler.buildDepError "dahdit"))
            (hsPkgs."dahdit-test" or (errorHandler.buildDepError "dahdit-test"))
            (hsPkgs."daytripper" or (errorHandler.buildDepError "daytripper"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }