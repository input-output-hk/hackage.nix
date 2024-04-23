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
      specVersion = "1.8";
      identifier = { name = "hedgehog-quickcheck"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley";
      homepage = "https://hedgehog.qa";
      url = "";
      synopsis = "Use QuickCheck generators in Hedgehog and vice versa.";
      description = "Use QuickCheck generators in Hedgehog and vice versa.\n\nHedgehog is a modern property-based testing system, in the spirit of\nQuickCheck. Hedgehog uses integrated shrinking, so shrinks obey the\ninvariants of generated values by construction.\n\nTo get started quickly, see the examples:\n<https://github.com/hedgehogqa/haskell-hedgehog/tree/master/hedgehog-";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }