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
    flags = { splot = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "concurrent-machines"; version = "0.3.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Concurrent networked stream transducers";
      description = "A simple use-case for this library is to run the stages\nof a pipelined streaming computation concurrently. If\ndata is streaming through multiple processing stages, you\nmight build a machine like\n\n@\nstep1 >~> step2 >~> step3\n@\n\nThe @>~>@ operator connects the machines on\neither side with a one-element buffer. This means that\ndata is pulled from upstream sources eagerly (perhaps\npulling one more value than will be consumed by\ndownstream), but it also means that each stage can be\nworking simultaneously, increasing throughput of the\nentire pipeline.\n\nA few small examples are available in the @examples@\ndirectory of the source repository.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."concurrent-machines" or (errorHandler.buildDepError "concurrent-machines"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "splotime" = {
          depends = pkgs.lib.optionals (flags.splot) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."concurrent-machines" or (errorHandler.buildDepError "concurrent-machines"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if flags.splot then true else false;
        };
      };
      benchmarks = {
        "fanout" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."concurrent-machines" or (errorHandler.buildDepError "concurrent-machines"))
          ];
          buildable = true;
        };
      };
    };
  }