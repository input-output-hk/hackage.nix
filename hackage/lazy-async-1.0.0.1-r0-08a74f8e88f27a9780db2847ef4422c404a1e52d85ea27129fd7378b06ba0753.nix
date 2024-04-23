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
      identifier = { name = "lazy-async"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/lazy-async";
      url = "";
      synopsis = "Asynchronous actions that don't start right away";
      description = "Sometimes we have a bunch of 'IO' actions that do things like\nread files, make HTTP requests, or query a database. Some of the\ninformation that these actions produce might not end up being\nneeded, depending on the breaks. In the interest of avoiding\nunnecessary effort, we don't want to simply run all the actions\nand collect their results upfront. We also don't want to simply\nrun an action right before its result is needed, because it might\nbe needed in more than one place, which opens the possibility of\nunnecessarily running the same action more than once. In\nsituations like these, we use \"LazyAsync\".\n\nUnder the hood, an 'IO' action is turned into a @LazyAsync@ by\nconstructing two things: An @Async@ (from the @async@ package),\nand a @TVar Bool@ (from the @stm@ package). The TVar, initialized\nto @False@, indicates whether the action is wanted yet. The async\nthread waits until the TVar turns @True@ and then runs the action.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."lazy-async" or (errorHandler.buildDepError "lazy-async"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
          ];
          buildable = true;
        };
      };
    };
  }