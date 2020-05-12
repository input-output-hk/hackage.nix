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
      identifier = { name = "hakaru"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppaml@indiana.edu";
      author = "The Hakaru Team";
      homepage = "http://indiana.edu/~ppaml/";
      url = "";
      synopsis = "A probabilistic programming embedded DSL   ";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."integration" or (errorHandler.buildDepError "integration"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ];
        buildable = true;
        };
      tests = {
        "hakaru-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hakaru" or (errorHandler.buildDepError "hakaru"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."hakaru" or (errorHandler.buildDepError "hakaru"))
            ];
          buildable = true;
          };
        };
      };
    }