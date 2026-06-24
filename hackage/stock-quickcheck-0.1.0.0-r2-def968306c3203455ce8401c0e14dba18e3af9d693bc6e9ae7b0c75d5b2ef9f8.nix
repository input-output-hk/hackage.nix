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
      identifier = { name = "stock-quickcheck"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Derive Arbitrary via the stock plugin";
      description = "The @<https://hackage.haskell.org/package/stock stock>@ plugin\nprovides a datatype for deriving and synthesising instances at\ncompile time. __stock-quickcheck__ extends it to support\n@<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@,\n@<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@,\nand their higher-kinded variants.\n\n> {-# options_ghc -fplugin Stock #-}\n>\n> {-# language DerivingVia #-}\n> {-# language DataKinds   #-}\n>\n> import Stock\n> import Stock.QuickCheck\n> import Stock.Override\n>\n> import Test.QuickCheck\n>\n> data Person = P { name :: String, age :: Int }\n>   deriving (Eq, Ord, Show, Read) via\n>     Stock Person\n>   deriving Arbitrary via\n>     Overriding Person\n>       [ name via ASCIIString, age via Positive ]\n\n__stock-quickcheck__ provides four instances, that signal to the\nplugin how to derive @Arbitrary@, @Arbitrary1@, @Arbitrary2@ and\n@CoArbitrary@.\n\n@arbitrary@ is structural and size-aware, in the style of\n@generic-arbitrary@. It picks a constructor, preferring terminal\nconstructors once the size runs out, so recursive types terminate,\nand fills each field with its own @arbitrary@, dividing the size\namong recursive fields. @shrink@ defaults.\n\n> instance DeriveStock  Arbitrary   ..\n> instance DeriveStock1 Arbitrary1  ..\n> instance DeriveStock2 Arbitrary2  ..\n> instance DeriveStock  CoArbitrary ..\n\n@<https://hackage.haskell.org/package/stock-deepseq stock>@ companion packages include:\n\n* @<https://hackage.haskell.org/package/stock-deepseq stock-deepseq>@: @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n* @<https://hackage.haskell.org/package/stock-hashable stock-hashable>@: @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n* @<https://hackage.haskell.org/package/stock-aeson stock-aeson>@: @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n* __stock-quickcheck__: @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n* @<https://hackage.haskell.org/package/stock-profunctors stock-profunctors>@: @<https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor>@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-quickcheck" or (errorHandler.buildDepError "stock-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }