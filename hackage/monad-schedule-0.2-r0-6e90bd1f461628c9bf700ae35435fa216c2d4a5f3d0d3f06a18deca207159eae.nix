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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "monad-schedule"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "A new, simple, composable concurrency abstraction.";
      description = "A monad @m@ is said to allow scheduling if you can pass a number of actions @m a@ to it,\nand those can be executed at the same time concurrently.\nYou can observe the result of the actions after some time:\nSome actions will complete first, and the results of these are returned then as a list @'NonEmpty' a@.\nOther actions are still running, and for these you will receive continuations of type @m a@,\nwhich you can further run or schedule to completion as you like.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time-domain" or (errorHandler.buildDepError "time-domain"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time-domain" or (errorHandler.buildDepError "time-domain"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."monad-schedule" or (errorHandler.buildDepError "monad-schedule"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."generic-arbitrary" or (errorHandler.buildDepError "generic-arbitrary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }