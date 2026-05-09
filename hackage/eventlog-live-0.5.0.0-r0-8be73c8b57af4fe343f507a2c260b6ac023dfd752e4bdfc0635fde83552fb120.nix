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
    flags = { use-concurrent-machines = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "eventlog-live"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021-2025 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Live processing of eventlog data.";
      description = "This package provides [machines](https://hackage.haskell.org/package/machines) for processing live eventlog data.\nIt is primarily intended for use via the [eventlog-live-otelcol](https://hackage.haskell.org/package/eventlog-live-otelcol) package.\n\n[⚠️ Warning]:\n    This package is experimental.\n    It is versioned according to the [PVP](https://pvp.haskell.org).\n    However, breaking changes should be expected and no effort will be\n    made to avoid major version bumps until at least version @1.0.0.0@.\n\nFor more information, see [the README](https://github.com/well-typed/eventlog-live#readme).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."ghc-stack-profiler-core" or (errorHandler.buildDepError "ghc-stack-profiler-core"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ (if flags.use-concurrent-machines
          then [
            (hsPkgs."concurrent-machines" or (errorHandler.buildDepError "concurrent-machines"))
          ]
          else [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ]);
        buildable = true;
      };
    };
  }