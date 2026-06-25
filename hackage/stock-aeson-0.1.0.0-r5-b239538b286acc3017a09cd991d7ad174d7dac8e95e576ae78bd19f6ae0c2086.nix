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
      identifier = { name = "stock-aeson"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Derive ToJSON / FromJSON via the stock plugin";
      description = "The <https://hackage.haskell.org/package/stock stock> plugin\nprovides a newtype\n__@<https://hackage-content.haskell.org/package/stock-0.1.0.0/docs/Stock.html#t:Stock Stock>@__ \nfor deriving and synthesising instances at compile\ntime. __stock-aeson__ extends it to support\n@<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON ToJSON>@,\n@<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON FromJSON>@, and their higher-kinded variants.\n\n> {-# options_ghc -fplugin Stock #-}\n>\n> {-# language DerivingVia #-}\n>\n> import Stock\n> import Stock.Aeson\n>\n> data Person = P { name :: String, age :: Int }\n>   deriving (ToJSON, FromJSON) via\n>     Stock Person\n\nThe wire format reproduces\n@<https://hackage.haskell.org/package/aeson aeson>@'s\n@genericToJSON@ \\/ @genericParseJSON\ndefaultOptions@. __stock-aeson__ is a drop-in for @deriving anyclass\n(ToJSON, FromJSON)@.\n\n__stock-aeson__ provides six instances, that signal to the plugin\nhow to derive\n@<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON ToJSON>@,\n@<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON FromJSON>@.\n\n> instance DeriveStock  ToJSON    ..\n> instance DeriveStock1 ToJSON1   ..\n> instance DeriveStock2 ToJSON2   ..\n> instance DeriveStock  FromJSON  ..\n> instance DeriveStock1 FromJSON1 ..\n> instance DeriveStock2 FromJSON2 ..\n\nThe lifted variants derive the same zero-cost way (no @Generic@ at\nruntime): parameter fields route through the supplied per-parameter\nencoders\\/parsers, so the bytes still match @aeson@'s generic\nderiving.\n\n> data F a   = MkF a [a]   deriving (ToJSON1, FromJSON1) via Stock1 F\n> data P a b = MkP a b [b] deriving (ToJSON2, FromJSON2) via Stock2 P\n\n<https://hackage.haskell.org/package/stock stock> companion packages include:\n\n* __@<https://hackage.haskell.org/package/stock-deepseq stock-deepseq>@__: @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n* __@<https://hackage.haskell.org/package/stock-hashable stock-hashable>@__: @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n* __@stock-aeson@__: @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n* __@<https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>@__: @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n* __@<https://hackage.haskell.org/package/stock-profunctors stock-profunctors>@__: @<https://hackage-content.haskell.org/package/profunctors-5.6.3/docs/Data-Profunctor.html#t:Profunctor Profunctor>@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-aeson" or (errorHandler.buildDepError "stock-aeson"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }