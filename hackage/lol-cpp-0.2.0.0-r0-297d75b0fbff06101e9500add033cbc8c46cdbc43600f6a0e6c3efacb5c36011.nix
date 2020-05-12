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
    flags = { llvm = false; opt = true; with-apps = true; with-execs = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "lol-cpp"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Eric Crockett,\nChris Peikert";
      maintainer = "Eric Crockett <ecrockett@gmail.com>,\nChad Sharp <cmlsharp@umich.edu>";
      author = "Eric Crockett <ecrockett0@gmail.com>,\nChris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/lol#readme";
      url = "";
      synopsis = "A fast C++ backend for <https://hackage.haskell.org/package/lol lol>.";
      description = "Λ ⚬ λ (Lol) is a general-purpose library for ring-based lattice cryptography. This package provides a C++ implementation of Lol's Tensor interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test-lol-apps-cpp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-apps" or (errorHandler.buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (errorHandler.buildDepError "lol-cpp"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = if !flags.with-apps then false else true;
          };
        };
      benchmarks = {
        "bench-lol-apps-cpp" = {
          depends = [
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-apps" or (errorHandler.buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (errorHandler.buildDepError "lol-cpp"))
            ];
          buildable = if !flags.with-apps then false else true;
          };
        "bench-lol-cpp" = {
          depends = [
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."lol-cpp" or (errorHandler.buildDepError "lol-cpp"))
            ];
          buildable = true;
          };
        };
      };
    }