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
      identifier = { name = "haskell-list-builder"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "huw.campbell@gmail.com";
      author = "Huw Campbell";
      homepage = "https://tangled.org/@huwcampbell.com/haskell-list-builder";
      url = "";
      synopsis = "Fast Sequencing and Building Lists using Unsafe Primitives";
      description = "Extra unsafe sequencing of IO actions from [Twan van Laarhoven](https://www.twanvl.nl/blog/haskell/unsafe-sequence)\npackaged up, along with `unfoldIO` and an implementation of Scala's List Buffer. This means we can have tail\nrecursive `sequence` and `traverse` specialised for lists of IO actions.\n\nFor algorithms which are more easily written in a mutable way we have `ListBuilder s a`. A `ListBuilder s a`\nis like a wrapper around an `ST s [a]`, but with a constant time append as well as prepend.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-list-builder" or (errorHandler.buildDepError "haskell-list-builder"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-list-builder" or (errorHandler.buildDepError "haskell-list-builder"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ];
          buildable = true;
        };
      };
    };
  }