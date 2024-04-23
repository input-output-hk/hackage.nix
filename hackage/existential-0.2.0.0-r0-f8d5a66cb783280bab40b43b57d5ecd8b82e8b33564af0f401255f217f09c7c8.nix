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
      identifier = { name = "existential"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "simon@cse.yorku.ca";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Existential types with lens-like accessors.";
      description = "Existential types encapsulated in Cell type together with some lens-like accessors. A template-haskell-based factory generator is also provided to use TypeRep to reconstruct Cell objects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."serialize-instances" or (errorHandler.buildDepError "serialize-instances"))
          (hsPkgs."th-printf" or (errorHandler.buildDepError "th-printf"))
          (hsPkgs."quickcheck-report" or (errorHandler.buildDepError "quickcheck-report"))
          (hsPkgs."portable-template-haskell-lens" or (errorHandler.buildDepError "portable-template-haskell-lens"))
          (hsPkgs."control-invariants" or (errorHandler.buildDepError "control-invariants"))
        ];
        buildable = true;
      };
    };
  }