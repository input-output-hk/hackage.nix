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
      identifier = { name = "relude"; version = "0.6.0.0"; };
      license = "MIT";
      copyright = "2016 Stephen Diehl, 2016-2018 Serokell, 2018-2019 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Dmitrii Kovanikov, Veronika Romashkina, Stephen Diehl, Serokell";
      homepage = "https://github.com/kowainik/relude";
      url = "";
      synopsis = "Custom prelude from Kowainik";
      description = "@__relude__@ is an alternative prelude library. If you find the default\n@Prelude@ unsatisfying, despite its advantages, consider using @relude@\ninstead.\n\n== Relude design goals\n\n* __Avoid all [partial functions](https://www.reddit.com/r/haskell/comments/5n51u3/why_are_partial_functions_as_in_head_tail_bad/)__\n(like @head :: [a] -> a@). The types of partial functions lie about their\nbehavior and usage of such functions can lead to the unexpected bugs. Though\nyou can still use some unsafe functions from @Relude.Unsafe@ module, but they\nare not exported by default.\n\n* __Type-safety__. We like to make invalid states unrepresantable. And if it's\npossible to express this concept through the types then we will do it.\n/Example:/ @ whenNotNull :: Applicative f => [a] -> (NonEmpty a -> f ()) -> f () @\n\n* __Performance.__ Prefer @Text@ over @[String](https://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/)@,\nuse spaceleak-free functions (like our custom @sum@ and @product@),\nintroduce @\\{\\-\\# INLINE \\#\\-\\}@ and @\\{\\-\\# SPECIALIZE \\#\\-\\}@ pragmas where\nappropriate.\n\n* __Minimalism__ (low number of dependencies). We don't force users of @relude@ to\nstick to some specific lens or text formatting or logging library. If\npossible, @relude@ tries to depend only on boot libraies.\n\n* __Convenience__ (like lifted to @MonadIO@ functions, more reexports).\nDespite minimalism, we want to bring common types and functions (like\n@containers@ and @bytestring@) into scope because they are used in almost\nevery application anyways.\n\n* __Provide excellent documentation.__\n\n1. Tutorial\n\n2. Migration guide from @Prelude@\n\n3. Haddock for every function with examples tested by\n[doctest](http://hackage.haskell.org/package/doctest)).\n\n4. Documentation regarding [internal module structure](http://hackage.haskell.org/package/relude/docs/Relude.html)\n\n5. @relude@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @[.hlint.yaml](https://github.com/kowainik/relude/blob/master/.hlint.yaml)@\n\n* __User-friendliness.__ Ability to quickly migrate to @relude@ if you're familiar\nwith the common libraries like @text@ and @containers@. @relude@ also makes heavy usage\nof custom type errors to provide better UX.\n\n* __Exploration.__ Experiment with new ideas and proposals without\nintroducing breaking changes. @relude@ uses the approach with @Extra.*@\nmodules which are not exported by default so it's quite easy to bring\nsomething new and let users decide to use it or not.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "relude-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        "relude-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "relude-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }