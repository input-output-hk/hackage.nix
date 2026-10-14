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
      identifier = { name = "railroad"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mastratisi@proton.me";
      author = "Frederik Kallstrup Mastratisi";
      homepage = "https://github.com/mastratisi/railroad";
      url = "";
      synopsis = "Railway-oriented error handling: unwrap, throw, recover or fall back";
      description = "Railway-oriented error handling for Haskell: one short operator per\nstep, and the failure paths stop taking up lines.\n\nEach operator looks at a result (@Maybe@, @Either@, @Bool@,\n@Validation@, or a collection of them), decides whether it is a failure,\nand says what to do about it. Where you would write\n\n> rows <- runQuery (userById uid) >>= either (const (throwError err503)) pure\n> user <- case rows of\n>   []  -> throwError err404\n>   [u] -> pure u\n>   _   -> throwError err500\n\nyou write\n\n> user <- runQuery (userById uid) ? err503 ?! cardinalityErr err404 (const err500)\n\nLayers are unwrapped left to right: @? err503@ unwraps the database\n@Either@, then @?!@ demands exactly one row (none is a 404, several a 500).\n\nWhat to do about a failure:\n\n* Throw: @?@ (constant error) and @??@ (error computed from the failure).\n\n* Recover: @?~@ and @??~@.\n\n* Observe, then carry on: @?\\<*@, as in @runQuery q ?\\<* logDbError ? err503@.\n\n* Fall back to another source: @?|@, or @?|<>@ to combine the errors.\n\nWhat counts as a failure:\n\n* @Nothing@, @Left@, @False@ and @Failure@. A collection fails if any\n  element does, so an empty collection passes. @Validation@ failures\n  accumulate, so a whole request can report every problem at once.\n\n* Collections are also checked by size: @?+@ (at least one), @?!@ (exactly\n  one), @?∅@ (none), and @?∃@ (at least one element succeeded; keeps the\n  successes).\n\n* Classifiers: @?>@ tags by a predicate. Any function into @Either@,\n  @Maybe@, @Bool@ or @Validation@ is a classifier, applied with @\\<&\\>@.\n  \"Railroad.Bifurcate\" provides @neg@, @atLeastOne@, @exactlyOne@,\n  @noneAtAll@ and @anySucceeds@.\n\nWorks in any @MonadError@ (\"Railroad.MonadError\": @mtl@, @ExceptT@,\nservant's @Handler@) and in @effectful@ with the @Error@ effect\n(\"Railroad\"). All operators are @infixl 1@ like @>>=@ and @\\<&\\>@, so\nthey chain without parentheses. The readme has more examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
        ];
        buildable = true;
      };
      tests = {
        "railroad-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."railroad" or (errorHandler.buildDepError "railroad"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }