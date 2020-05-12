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
      identifier = { name = "dph-examples"; version = "0.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Data Parallel Haskell example programs.";
      description = "Data Parallel Haskell example programs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dph-smoke-bool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-smoke-concat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-smoke-sumsq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-smoke-evens" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-smoke-indices" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-smoke-rank" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-smoke-reverse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-imaginary-words" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-spectral-dotp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-spectral-smvm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-spectral-quickhull" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-spectral-quickhull-vector" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-spectral-quicksort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "dph-real-nbody" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (errorHandler.buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }