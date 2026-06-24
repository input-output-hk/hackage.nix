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
      description = "The @stock@ plugin provides a datatype for deriving and synthesising\ninstances at compile time. @stock-quickcheck@ extends the @stock@\nwith support for @Arbitrary@ (and higher-kinded variants) and\n@CoArbitrary@.\n\n> {-# options_ghc -fplugin Stock #-}\n> \n> {-# language DerivingVia #-}\n> {-# language DataKinds   #-}\n> \n> import Stock\n> import Stock.QuickCheck\n> import Stock.Override\n> \n> import Test.QuickCheck\n> \n> data Person = P { name :: String, age :: Int }\n>   deriving (Eq, Ord, Show, Read) via\n>     Stock Person\n>   deriving Arbitrary via\n>     Overriding Person\n>       [ name via ASCIIString, age via Positive ]\n\n@stock-quickcheck@ provides four instances, that signal to the\nplugin how to derive @Arbitrary@, @Arbitrary1@, @Arbitrary2@ and\n@CoArbitrary@. \n\n@arbitrary@ is structural and size-aware, in the style of\n@generic-arbitrary@. It picks a constructor, preferring terminal\nconstructors once the size runs out, so recursive types terminate,\nand fills each field with its own @arbitrary@, dividing the size\namong recursive fields. @shrink@ defaults.\n\n> instance DeriveStock  Arbitrary   ..\n> instance DeriveStock1 Arbitrary1  ..\n> instance DeriveStock2 Arbitrary2  ..\n> instance DeriveStock  CoArbitrary ..";
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