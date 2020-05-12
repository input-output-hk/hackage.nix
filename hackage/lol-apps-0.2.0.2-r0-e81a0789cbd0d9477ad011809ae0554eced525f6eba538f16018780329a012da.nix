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
      identifier = { name = "lol-apps"; version = "0.2.0.2"; };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "Lattice-based cryptographic applications using <https://hackage.haskell.org/package/lol lol>.";
      description = "This library contains example cryptographic applications built using\n<https://hackage.haskell.org/package/lol lol>,\na general-purpose library for ring-based lattice cryptography.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or (errorHandler.buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "homomprf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-apps" or (errorHandler.buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (errorHandler.buildDepError "lol-cpp"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        "khprf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-apps" or (errorHandler.buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (errorHandler.buildDepError "lol-cpp"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            ];
          buildable = true;
          };
        "symmshe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-apps" or (errorHandler.buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (errorHandler.buildDepError "lol-cpp"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-apps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-apps" or (errorHandler.buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (errorHandler.buildDepError "lol-cpp"))
            (hsPkgs."lol-repa" or (errorHandler.buildDepError "lol-repa"))
            (hsPkgs."lol-tests" or (errorHandler.buildDepError "lol-tests"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-apps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-apps" or (errorHandler.buildDepError "lol-apps"))
            (hsPkgs."lol-benches" or (errorHandler.buildDepError "lol-benches"))
            (hsPkgs."lol-cpp" or (errorHandler.buildDepError "lol-cpp"))
            (hsPkgs."lol-repa" or (errorHandler.buildDepError "lol-repa"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            ];
          buildable = true;
          };
        };
      };
    }