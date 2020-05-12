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
      identifier = { name = "dejafu"; version = "0.7.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "Systematic testing for Haskell concurrency.";
      description = "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time\n\nConcurrency is nice, deadlocks and race conditions not so much. The\n@Par@ monad family, as defined in\n<https://hackage.haskell.org/package/abstract-par/docs/Control-Monad-Par-Class.html abstract-par>\nprovides deterministic parallelism, but sometimes we can tolerate a\nbit of nondeterminism.\n\nThis package builds on the\n<https://hackage.haskell.org/package/concurrency concurrency>\npackage by enabling you to systematically and deterministically test\nyour concurrent programs.";
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
          (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
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