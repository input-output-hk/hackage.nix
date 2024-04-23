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
      identifier = { name = "dejafu"; version = "0.5.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "Systematic testing for Haskell concurrency.";
      description = "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time\n\nConcurrency is nice, deadlocks and race conditions not so much. The\n@Par@ monad family, as defined in\n<https://hackage.haskell.org/package/abstract-par/docs/Control-Monad-Par-Class.html abstract-par>\nprovides deterministic parallelism, but sometimes we can tolerate a\nbit of nondeterminism.\n\nThis package builds on the\n<https://hackage.haskell.org/package/concurrency concurrency>\npackage by enabling you to systematically and deterministically test\nyour concurrent programs.\n\n== Déjà Fu with 'IO':\n\nThe core assumption underlying Déjà Fu is that any apparent\nnondeterminism arises purely from the scheduling behaviour. To put\nit another way, a given computation, parametrised with a fixed set\nof scheduling decisions, is deterministic.\n\nWhilst this assumption may not hold in general when 'IO' is\ninvolved, you should strive to produce test cases where it does.\n\n== Memory Model\n\nThe testing functionality supports a few different memory models,\nfor computations which use non-synchronised `CRef` operations. The\nsupported models are:\n\n* __Sequential Consistency:__ A program behaves as a simple\ninterleaving of the actions in different threads. When a CRef is\nwritten to, that write is immediately visible to all threads.\n\n* __Total Store Order (TSO):__ Each thread has a write buffer. A\nthread sees its writes immediately, but other threads will only\nsee writes when they are committed, which may happen later. Writes\nare committed in the same order that they are created.\n\n* __Partial Store Order (PSO):__ Each CRef has a write buffer. A\nthread sees its writes immediately, but other threads will only\nsee writes when they are committed, which may happen later. Writes\nto different CRefs are not necessarily committed in the same order\nthat they are created.\n\nIf a testing function does not take the memory model as a parameter,\nit uses TSO.\n\nSee the <https://github.com/barrucadu/dejafu README> for more\ndetails.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."concurrency" or (errorHandler.buildDepError "concurrency"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."ref-fd" or (errorHandler.buildDepError "ref-fd"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ];
        buildable = true;
      };
    };
  }