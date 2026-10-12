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
      identifier = { name = "railroad"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mastratisi@proton.me";
      author = "Frederik Kallstrup Mastratisi";
      homepage = "https://github.com/mastratisi/railroad";
      url = "";
      synopsis = "Railway-oriented error handling: unwrap or throw in one short operator.";
      description = "Railway-oriented error handling for Haskell: one short operator per\nstep, and the failure paths stop taking up lines.\n\nEach operator unwraps one layer of a result (@Maybe@, @Either@, @Bool@,\n@Validation@, or a collection of them) and says what to throw if it\nfailed. Where you would write\n\n> rows <- runQuery (userById uid) >>= either (const (throwError err503)) pure\n> user <- case rows of\n>   []  -> throwError err404\n>   [u] -> pure u\n>   _   -> throwError err500\n\nyou write\n\n> user <- runQuery (userById uid) ? err503 ?! cardinalityErr err404 (const err500)\n\nLayers are unwrapped left to right: @? err503@ unwraps the database\n@Either@, then @?!@ demands exactly one row (none is a 404, several a 500).\n\n* Works in any @MonadError@ (\"Railroad.MonadError\": @mtl@, @ExceptT@,\n  servant's @Handler@) and in @effectful@ with the @Error@ effect\n  (\"Railroad\").\n\n* Unwrap or throw: @?@ (constant error) and @??@ (error computed from\n  the failure). Recover instead of throwing: @?~@ and @??~@.\n\n* Tag by a predicate with @?>@, or fall back to another source with @?|@\n  and @?|<>@.\n\n* Log a failure before a constant error discards it, with @?\\<*@:\n  @runQuery q ?\\<* logDbError ? err503@.\n\n* @Validation@ failures accumulate: validate a whole request and report\n  every problem at once.\n\n* All operators are @infixl 1@ like @>>=@ and @\\<&\\>@, so they chain without\n  parentheses.\n\nCollections are checked with quantifiers: @?@ is ∀ (\"every element\nsucceeds\", so an empty collection passes), @?+@ is ∃ (\"at least one\"),\n@?!@ is ∃! (\"exactly one\") and @?∅@ is ¬∃ (\"none\"). They chain:\n@xs ?+ e1 ? e2@ means \"at least one, and all succeed\". The readme has the\ndetails and a longer servant example.";
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