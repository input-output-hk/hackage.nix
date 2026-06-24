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
      description = "The @<https://hackage.haskell.org/package/stock stock>@ plugin\nprovides a datatype for deriving and synthesising instances at\ncompile time. __stock-aeson__ extends it to support\n@<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON ToJSON>@,\n@<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON FromJSON>@, and their higher-kinded variants.\n\n> {-# options_ghc -fplugin Stock #-}\n> \n> {-# language DerivingVia #-}\n> \n> import Stock\n> import Stock.Aeson\n> \n> data Person = P { name :: String, age :: Int }\n>   deriving (ToJSON, FromJSON) via \n>     Stock Person\n\nThe wire format reproduces aeson's @genericToJSON@ \\/\n@genericParseJSON defaultOptions@ exactly, __stock-aeson__ is a\ndrop-in for @deriving anyclass (ToJSON, FromJSON)@.\n\n__stock-aeson__ provides six instances, that signal to the plugin\nhow to derive\n@<https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor>@.\n\n> instance DeriveStock  ToJSON    ..\n> instance DeriveStock1 ToJSON1   ..\n> instance DeriveStock2 ToJSON2   ..\n> instance DeriveStock  FromJSON  ..\n> instance DeriveStock1 FromJSON1 ..\n> instance DeriveStock2 FromJSON2 ..\n\nThe lifted variants derive the same zero-cost way (no @Generic@ at\nruntime): parameter fields route through the supplied per-parameter\nencoders\\/parsers, so the bytes still match @aeson@'s generic\nderiving.\n\n> data F a   = MkF a [a]   deriving (ToJSON1, FromJSON1) via Stock1 F\n> data P a b = MkP a b [b] deriving (ToJSON2, FromJSON2) via Stock2 P\n\n@<https://hackage.haskell.org/package/stock-deepseq stock>@ companion packages include:\n\n* @<https://hackage.haskell.org/package/stock-deepseq stock-deepseq>@: @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n* @<https://hackage.haskell.org/package/stock-hashable stock-hashable>@: @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n* __stock-aeson__: @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n* @<https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>@: @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n* @<https://hackage.haskell.org/package/stock-profunctors stock-profunctors>@: @<https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor>@";
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