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
      specVersion = "1.10";
      identifier = { name = "axiomatic-classes"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "simon@cse.yorku.ca";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Specify axioms for type classes and quickCheck all available instances";
      description = "Provides a way to specify axioms for type classes\nand to quickCheck all available instances against\nthem";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."th-printf" or (errorHandler.buildDepError "th-printf"))
          (hsPkgs."control-invariants" or (errorHandler.buildDepError "control-invariants"))
          (hsPkgs."portable-template-haskell-lens" or (errorHandler.buildDepError "portable-template-haskell-lens"))
          (hsPkgs."quickcheck-report" or (errorHandler.buildDepError "quickcheck-report"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ];
        buildable = true;
        };
      };
    }