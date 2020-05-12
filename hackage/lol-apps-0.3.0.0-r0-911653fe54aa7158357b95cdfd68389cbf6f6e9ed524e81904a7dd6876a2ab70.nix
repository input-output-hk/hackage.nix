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
      specVersion = "1.12";
      identifier = { name = "lol-apps"; version = "0.3.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Eric Crockett,\nChris Peikert";
      maintainer = "Eric Crockett <ecrockett@gmail.com>,\nChad Sharp <cmlsharp@umich.edu>";
      author = "Eric Crockett <ecrockett0@gmail.com>,\nChris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/lol#readme";
      url = "";
      synopsis = "Lattice-based cryptographic applications using <https://hackage.haskell.org/package/lol lol>.";
      description = "This library contains example cryptographic applications built using <https://hackage.haskell.org/package/lol Lol>, a general-purpose library for ring-based lattice cryptography.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."options" or (errorHandler.buildDepError "options"))
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or (errorHandler.buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }