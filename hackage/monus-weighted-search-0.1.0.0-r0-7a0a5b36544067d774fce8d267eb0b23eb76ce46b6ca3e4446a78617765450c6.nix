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
      identifier = { name = "monus-weighted-search"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/monus-weighted-search";
      url = "";
      synopsis = "Efficient search weighted by an ordered monoid with monus.";
      description = "This package contains the Haskell constructions from the paper \"Algebras for\nWeighted Search\":\n\n* Donnacha Oisín Kidney and Nicolas Wu. 2021. /Algebras for weighted search/.\nProc. ACM Program. Lang. 5, ICFP, Article 72 (August 2021), 30 pages.\nDOI:<https://doi.org/10.1145/3473577>\n\nIn particular, it contains the 'HeapT' monad, the 'Monus' class, and the\nexample uses of those types from the paper (see\n\"MonusWeightedSearch.Examples.Dijkstra\", in particular).\n\nThe types given here have been tested and are implemented in a way that is\nintended to be usable in \"real\" code, although the primary purpose of this\npackage is to demonstrate that the code in the paper does in fact function.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      tests = {
        "monus-weighted-search-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."monus-weighted-search" or (errorHandler.buildDepError "monus-weighted-search"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monus-weighted-search" or (errorHandler.buildDepError "monus-weighted-search"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }