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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-fail-fast"; version = "0.0.1"; };
      license = "MIT";
      copyright = "2015 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/MichaelXavier/tasty-fail-fast#readme";
      url = "";
      synopsis = "Adds the ability to fail a tasty test suite on first test failure";
      description = "tasty-fail-fast wraps any ingredient to fail as soon as the first test fails. For example:\n\n@\ndefaultMainWithIngredients (map failFast defaultIngredients) tests\n@\n\nYour test suite will now get a @--fail-fast@ flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-fail-fast" or (errorHandler.buildDepError "tasty-fail-fast"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-tap" or (errorHandler.buildDepError "tasty-tap"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }