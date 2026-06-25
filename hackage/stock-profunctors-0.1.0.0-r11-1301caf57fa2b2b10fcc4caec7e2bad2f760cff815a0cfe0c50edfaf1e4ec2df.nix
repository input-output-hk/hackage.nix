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
      description = "The <https://hackage.haskell.org/package/stock stock> plugin\nprovides a newtype\n__@<https://hackage-content.haskell.org/package/stock-0.1.0.0/docs/Stock.html#t:Stock Stock>@__ \nfor deriving and synthesising instances at compile\ntime. __stock-profunctors__ extends it to support\n@<https://hackage-content.haskell.org/package/profunctors-5.6.3/docs/Data-Profunctor.html#t:Profunctor Profunctor>@.\n\n> {-# options_ghc -fplugin Stock #-}\n> \n> {-# language DerivingVia #-}\n> \n> import Data.Kind\n> import Stock\n> import Stock.Profunctor\n> \n> type    Foo :: Type -> Type -> Type\n> newtype Foo i o = Foo ((((o -> i) -> o) -> i) \n>                     -> (((i -> o) -> i) -> o))\n>   deriving Functor    via Stock1 (Foo i)\n>   deriving Profunctor via Stock2 Foo\n\n__stock-profunctors__ provides an instance for @DeriveStock2\nProfunctor@ that signals to the plugin how to derive\n@<https://hackage-content.haskell.org/package/profunctors-5.6.3/docs/Data-Profunctor.html#t:Profunctor Profunctor>@.\n\n<https://hackage.haskell.org/package/stock stock> companion packages include:\n\n* __@<https://hackage.haskell.org/package/stock-deepseq stock-deepseq>@__: @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n* __@<https://hackage.haskell.org/package/stock-hashable stock-hashable>@__: @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n* __@<https://hackage.haskell.org/package/stock-aeson stock-aeson>@__: @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n* __@<https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>@__: @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n* __@stock-profunctors@__: @<https://hackage-content.haskell.org/package/profunctors-5.6.3/docs/Data-Profunctor.html#t:Profunctor Profunctor>@";
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