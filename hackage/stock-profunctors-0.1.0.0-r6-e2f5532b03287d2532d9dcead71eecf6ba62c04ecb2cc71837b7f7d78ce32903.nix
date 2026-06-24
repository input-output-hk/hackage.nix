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
      description = "The @<https://hackage.haskell.org/package/stock stock>@ plugin\nprovides a datatype for deriving and synthesising instances at\ncompile time. __stock-profunctors__ extends the\n@<https://hackage.haskell.org/package/stock stock>@ with support for\n@Profunctor@, \n\n> {-# options_ghc -fplugin Stock #-}\n> \n> {-# language DerivingVia #-}\n> \n> import Data.Kind\n> import Stock\n> import Stock.Profunctor\n> \n> type    Foo :: Type -> Type -> Type\n> newtype Foo i o = Foo ((((o -> i) -> o) -> i) -> (((i -> o) -> i) -> o))\n>   deriving Functor    via Stock1 (Foo i)\n>   deriving Profunctor via Stock2 Foo\n\n__stock-profunctor__ provides an instance for @DeriveStock2\nProfunctor@, that signal to the plugin how to derive @Profunctor@.\n\nCompanion packages include:\n\n* @<https://hackage.haskell.org/package/stock-deepseq stock>@\n\n    * @<https://hackage.haskell.org/package/stock-deepseq stock-deepseq>@: @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n    * @<https://hackage.haskell.org/package/stock-hashable stock-hashable>@: @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n    * @<https://hackage.haskell.org/package/stock-aeson stock-aeson>@: @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n    * @<https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>@: @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n    * __stock-profunctors__: @<https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor>@";
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