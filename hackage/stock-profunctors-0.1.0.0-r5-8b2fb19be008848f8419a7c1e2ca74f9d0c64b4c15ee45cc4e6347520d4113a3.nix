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
      identifier = { name = "stock-profunctors"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Derive Profunctor via the stock plugin";
      description = " A companion for the <https://hackage.haskell.org/package/stock stock> plugin: depend on @stock-profunctors@ and you can\n write @data P a b = … deriving Profunctor via Stock2 P@.  It is /not/ a plugin\n, it registers an @instance DeriveStock2 Profunctor@ (on the \"Stock.Derive\"\n SDK) that the <https://hackage.haskell.org/package/stock stock> plugin discovers and runs, so no extra @-fplugin@ is\n needed.\n\n <https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor> is the @[Contra, Co]@ case of the plugin's n-ary variance functor\n engine, the same recursion as @Functor@ \\/ @Contravariant@ \\/ @Bifunctor@.\n\n Companion packages include:\n\n * <https://hackage.haskell.org/package/stock-deepseq stock-deepseq>: <https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>, <https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData1 NFData1>, <https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData2 NFData2>\n * <https://hackage.haskell.org/package/stock-hashable stock-hashable>: <https://hackage.haskell.org/package/hashable/docs/Data-Hashable.html#t:Hashable Hashable>, <https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>, <https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>\n * <https://hackage.haskell.org/package/stock-aeson stock-aeson>: <https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON ToJSON>, <https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>, <https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>; <https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON FromJSON>, <https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>, <https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>\n * <https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>: <https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>, <https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>, <https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>; <https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>\n * __stock-profunctors__: <https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-profunctors" or (errorHandler.buildDepError "stock-profunctors"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
          buildable = true;
        };
      };
    };
  }