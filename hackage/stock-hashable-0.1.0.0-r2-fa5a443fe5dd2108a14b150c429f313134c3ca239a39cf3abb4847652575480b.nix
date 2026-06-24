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
      identifier = { name = "stock-hashable"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Derive Hashable via the stock plugin";
      description = "The @<https://hackage.haskell.org/package/stock stock>@ plugin\nprovides a datatype for deriving and synthesising instances at\ncompile time. __stock-hashable__ extends it to support\n@<https://hackage.haskell.org/package/hashable/docs/Data-Hashable.html#t:Hashable\nHashable>@, and higher-kinded variants.\n\n> {-# options_ghc -fplugin Stock #-}\n> \n> {-# language DerivingVia #-}\n> \n> import Stock\n> import Stock.Hashable\n> \n> data Pair a b = Pair a b\n>  deriving (Eq,  Hashable)  via Stock  (Pair a b)\n>  deriving (Eq1, Hashable1) via Stock1 (Pair a)\n>  deriving (Eq2, Hashable2) via Stock2 Pair\n\n__stock-hashable__ provides three instances, that signal to the\nplugin how to derive @Hashable@.\n\n> instance DeriveStock  Hashable  ..\n> instance DeriveStock1 Hashable1 ..\n> instance DeriveStock2 Hashable2 ..\n\n@<https://hackage.haskell.org/package/stock-deepseq stock>@ companion packages include:\n\n* @<https://hackage.haskell.org/package/stock-deepseq stock-deepseq>@: @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n* __stock-hashable__: @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n* @<https://hackage.haskell.org/package/stock-aeson stock-aeson>@: @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n* @<https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>@: @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n* @<https://hackage.haskell.org/package/stock-profunctors stock-profunctors>@: @<https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor>@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-hashable" or (errorHandler.buildDepError "stock-hashable"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
          buildable = true;
        };
        "inspection" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."stock-hashable" or (errorHandler.buildDepError "stock-hashable"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "9.14"
            then false
            else true;
        };
      };
    };
  }