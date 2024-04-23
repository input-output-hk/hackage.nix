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
      identifier = { name = "lol"; version = "0.7.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Eric Crockett,\nChris Peikert";
      maintainer = "Eric Crockett <ecrockett@gmail.com>,\nChad Sharp <cmlsharp@umich.edu>";
      author = "Eric Crockett <ecrockett0@gmail.com>,\nChris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/lol#readme";
      url = "";
      synopsis = "A library for lattice cryptography.";
      description = "Λ ⚬ λ (Lol) is a general-purpose library for ring-based lattice cryptography.  For a detailed description of interfaces and functionality, see <https://eprint.iacr.org/2015/1134 Λ ⚬ λ: Functional Lattice Cryptography>. The main backend for the library is <https://hackage.haskell.org/package/lol-cpp lol-cpp> (<https://hackage.haskell.org/package/lol-repa lol-repa> is currently out of date). For example cryptographic applications, see <https://hackage.haskell.org/package/lol-apps lol-apps>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."criterion-measurement" or (errorHandler.buildDepError "criterion-measurement"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."monadcryptorandom" or (errorHandler.buildDepError "monadcryptorandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or (errorHandler.buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."tagged-transformer" or (errorHandler.buildDepError "tagged-transformer"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
        ];
        buildable = true;
      };
      tests = {
        "test-lol" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          ];
          buildable = true;
        };
      };
    };
  }