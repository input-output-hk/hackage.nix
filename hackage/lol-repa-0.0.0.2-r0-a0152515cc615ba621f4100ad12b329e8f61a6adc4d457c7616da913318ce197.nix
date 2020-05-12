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
    flags = { llvm = false; opt = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lol-repa"; version = "0.0.0.2"; };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "A repa backend for <https://hackage.haskell.org/package/lol lol>.";
      description = "Λ ∘ λ (Lol) is a general-purpose library for ring-based lattice cryptography.\nThis package provides a pure Haskell implementation of Lol's Tensor interface\nusing the repa library for parallel arrays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          ];
        buildable = true;
        };
      tests = {
        "test-lol-repa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lol-repa" or (errorHandler.buildDepError "lol-repa"))
            (hsPkgs."lol-tests" or (errorHandler.buildDepError "lol-tests"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-lol-repa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-benches" or (errorHandler.buildDepError "lol-benches"))
            (hsPkgs."lol-repa" or (errorHandler.buildDepError "lol-repa"))
            ];
          buildable = true;
          };
        };
      };
    }