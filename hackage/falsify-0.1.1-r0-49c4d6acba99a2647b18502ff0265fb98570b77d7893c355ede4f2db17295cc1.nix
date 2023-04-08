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
      identifier = { name = "falsify"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Property-based testing with internal integrated shrinking";
      description = "This library provides property based testing with support\nfor internal integrated shrinking: integrated in the sense\nof Hedgehog, meaning that there is no need to write a\nseparate shrinker and generator; and internal in the sense\nof Hypothesis, meaning that this works well even across\nmonadic bind. However, the actual techniques that power\n@falsify@ are quite different from both of these two\nlibraries.\n\nMost users will probably want to use the integration with\n@<https://hackage.haskell.org/package/tasty tasty>@,\nand use \"Test.Tasty.Falsify\" as their main entrypoint\ninto the library. The \"Test.Falsify.Interactive\" module\ncan be used to experiment with the library in @ghci@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test-falsify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ];
          buildable = true;
          };
        };
      };
    }