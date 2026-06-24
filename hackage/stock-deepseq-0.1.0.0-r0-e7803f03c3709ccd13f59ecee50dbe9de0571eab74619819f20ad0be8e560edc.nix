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
      description = "The @stock@ plugin provides a datatype for deriving and synthesising\ninstances at compile time. @stock-deepseq@ extends the @stock@ with\nsupport for @NFData@ and higher-kinded variants.\n\n> {-# options_ghc -fplugin Stock -Wno-unused-top-binds #-}\n> \n> {-# language DerivingVia #-}\n> {-# language DataKinds   #-}\n>\n> import Stock\n> import Stock.NFData\n> import Stock.Override\n> \n> import Control.Exception\n> \n> data Person = P { name :: String, age :: Int, secret :: Person }\n>   deriving (Eq, Ord, Show, NFData) via \n>     Stock Person\n> \n> -- >> try @SomeException (evaluate (rnf geir))\n> -- Left stack overflow\n> -- >> geir == geir\n> -- <loop>\n> -- >> geir\n> -- P {name = \"Geir\", age = 10, secret = P {name = \"Geir\", .. } }\n> geir :: Person\n> geir = P { name = \"Geir\", age = 10, secret = geir }\n\nThe @rnf@ function triggers the loop, but by pinning @secret@ as an\nignored field, we can happily force the other fields.\n\n> newtype Ignore a = Ignore a\n> instance NFData (Ignore a) where rnf _ = ()\n> instance Eq     (Ignore a) where _ == _ = True\n> instance Ord    (Ignore a) where compare _ _ = EQ\n> instance Show   (Ignore a) where show _ = \"<ignored>\"\n>\n> data Person = P { name :: String, age :: Int, secret :: Person }\n>   deriving (Eq, Ord, Show, NFData) via \n>     Overriding Person '[ secret via Ignore ]\n>\n> -- >> try @SomeException (evaluate (rnf geir))\n> -- Right ()\n> -- >> geir == geir\n> -- True\n> -- >> geir\n> -- P {name = \"Geir\", age = 10, secret = <ignored>}\n\n@stock-deepseq@ provides three instances, that signal to the\nplugin how to derive @NFData@, @NFData1@, @NFData2@.\n\n> instance DeriveStock  NFData  ..\n> instance DeriveStock1 NFData1 ..\n> instance DeriveStock2 NFData2 ..";
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