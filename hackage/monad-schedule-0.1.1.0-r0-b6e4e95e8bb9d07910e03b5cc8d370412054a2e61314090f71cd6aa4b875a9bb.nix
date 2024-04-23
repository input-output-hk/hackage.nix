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
      specVersion = "2.4";
      identifier = { name = "monad-schedule"; version = "0.1.1.0"; };
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
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."time-domain" or (errorHandler.buildDepError "time-domain"))
        ];
        buildable = true;
      };
    };
  }