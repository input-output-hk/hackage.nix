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
      identifier = { name = "stock-deepseq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Derive NFData via the stock plugin";
      description = "The /<https://hackage.haskell.org/package/stock stock>/ plugin\nprovides a datatype\n__@<https://hackage-content.haskell.org/package/stock-0.1.0.0/docs/Stock.html#t:Stock Stock>@__ \nfor deriving and synthesising instances at compile\ntime. __stock-deepseq__ extends it to support\n@<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>@ \nand higher-kinded variants.\n\n> {-# options_ghc -fplugin Stock #-}\n> \n> {-# language DerivingVia #-}\n> {-# language DataKinds   #-}\n>\n> import Stock\n> import Stock.NFData\n> \n> import Control.Exception\n> \n> data Person = P { name :: String, age :: Int, secret :: Person }\n>   deriving (Eq, Ord, Show, NFData) via \n>     Stock Person\n> \n> -- >> try @SomeException (evaluate (rnf geir))\n> -- Left stack overflow\n> -- >> geir == geir\n> -- <loop>\n> -- >> geir\n> -- P {name = \"Geir\", age = 10, secret = P {name = \"Geir\", .. } }\n> geir :: Person\n> geir = P { name = \"Geir\", age = 10, secret = geir }\n\nThe @rnf@ function triggers the loop, but by pinning @secret@ as an\nignored field, we can happily force the other fields.\n\n> newtype Ignore a = Ignore a\n> instance NFData (Ignore a) where rnf _ = ()\n> instance Eq     (Ignore a) where _ == _ = True\n> instance Ord    (Ignore a) where compare _ _ = EQ\n> instance Show   (Ignore a) where show _ = \"<ignored>\"\n>\n> data Person = P { name :: String, age :: Int, secret :: Person }\n>   deriving (Eq, Ord, Show, NFData) via \n>     Overriding Person '[ secret via Ignore ]\n>\n> -- >> try @SomeException (evaluate (rnf geir))\n> -- Right ()\n> -- >> geir == geir\n> -- True\n> -- >> geir\n> -- P {name = \"Geir\", age = 10, secret = <ignored>}\n\n__stock-deepseq__ provides three instances, that signal to the\nplugin how to derive @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData2 NFData2>@.\n\n> instance DeriveStock  NFData  ..\n> instance DeriveStock1 NFData1 ..\n> instance DeriveStock2 NFData2 ..\n\n<https://hackage.haskell.org/package/stock stock> companion packages include:\n\n* __stock-deepseq__: @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage-content.haskell.org/package/deepseq-1.5.2.0/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n* __@<https://hackage.haskell.org/package/stock-hashable stock-hashable>@__: @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage-content.haskell.org/package/hashable-1.5.1.0/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n* __@<https://hackage.haskell.org/package/stock-aeson stock-aeson>@__: @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage-content.haskell.org/package/aeson-2.3.0.0/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n* __@<https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>@__: @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage-content.haskell.org/package/QuickCheck-2.18.0.0/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n* __@<https://hackage.haskell.org/package/stock-profunctors stock-profunctors>@__: @<https://hackage-content.haskell.org/package/profunctors-5.6.3/docs/Data-Profunctor.html#t:Profunctor Profunctor>@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-deepseq" or (errorHandler.buildDepError "stock-deepseq"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
        "inspection" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-deepseq" or (errorHandler.buildDepError "stock-deepseq"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "9.14"
            then false
            else true;
        };
      };
    };
  }