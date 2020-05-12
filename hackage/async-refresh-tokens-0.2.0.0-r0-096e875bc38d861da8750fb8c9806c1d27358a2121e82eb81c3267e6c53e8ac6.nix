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
      identifier = { name = "async-refresh-tokens"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/async-refresh-tokens#readme";
      url = "";
      synopsis = "Package implementing core logic for refreshing of expiring access tokens";
      description = "This package can be used for renewal of expiring access tokens\naccording to user-provided actions. Tokens will be stored in a\ntransactional variable (TVar).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async-refresh" or (errorHandler.buildDepError "async-refresh"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          ];
        buildable = true;
        };
      tests = {
        "async-refresh-tokens-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async-refresh-tokens" or (errorHandler.buildDepError "async-refresh-tokens"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }