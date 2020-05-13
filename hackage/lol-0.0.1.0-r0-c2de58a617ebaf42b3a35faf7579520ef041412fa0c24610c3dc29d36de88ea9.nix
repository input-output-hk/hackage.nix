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
    flags = { useicc = false; llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lol"; version = "0.0.1.0"; };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett, Chris Peikert";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "A general-purpose library for lattice cryptography.";
      description = "\\\\Lambda \\\\ocirc \\\\lambda is a general-purpose library for ring-based lattice cryptography.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or (errorHandler.buildDepError "storable-tuple"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
          (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
          (hsPkgs."tagged-transformer" or (errorHandler.buildDepError "tagged-transformer"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          ];
        buildable = true;
        };
      tests = {
        "lol-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }