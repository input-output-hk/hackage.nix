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
      specVersion = "2.2";
      identifier = { name = "ihp-hsx"; version = "1.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "support@digitallyinduced.com";
      author = "digitally induced GmbH";
      homepage = "";
      url = "";
      synopsis = "JSX-like but for Haskell";
      description = "JSX-like templating syntax for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."ihp-hsx".components.sublibs.ihp-hsx-parser or (errorHandler.buildDepError "ihp-hsx:ihp-hsx-parser"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
        ];
        buildable = true;
      };
      sublibs = {
        "ihp-hsx-parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
          buildable = true;
        };
        "ihp-hsx-lucid2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."ihp-hsx".components.sublibs.ihp-hsx-parser or (errorHandler.buildDepError "ihp-hsx:ihp-hsx-parser"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ihp-hsx-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."ihp-hsx" or (errorHandler.buildDepError "ihp-hsx"))
            (hsPkgs."ihp-hsx".components.sublibs.ihp-hsx-lucid2 or (errorHandler.buildDepError "ihp-hsx:ihp-hsx-lucid2"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }