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
    flags = { use-ghc-trace-events = true; };
    package = {
      specVersion = "3.8";
      identifier = { name = "ghc-stack-profiler"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hannes@well-typed.com";
      author = "Hannes Siebenhandl, Wen Kokke, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "RTS Callstack profiler for GHC.";
      description = "RTS Callstack profiler for GHC.\n\nThe main idea is to periodically sample the Haskell callstack and use IPE and [stack annotation](https://www.well-typed.com/blog/2025/09/better-haskell-stack-traces/) information in order to understand the source locations which\ncorrespond to the stack frames.\nTo profile a program it needs to be compiled and instrumented with the 'ghc-stack-profiler' package via:\n\n@\nimport GHC.Stack.Profiler.Sampler\n\nmain :: IO ()\nmain = 'withStackProfilerForMyThread' ('SampleIntervalMs' 10) $ do\n    ...\n@\n\nThis will spawn a profiling thread that will periodically take a snapshot of the current RTS callstack of your program and serialises it to the eventlog.\n\nTo improve readability of the profile, compile the program with @-finfo-table-map@ and @-fdistinct-constructor-tables@.\nUsing @cabal@, this can be achieved with an appropriate @cabal.project@ file:\n\n@\npackages: ...\n\n...\n\npackage *\n    ghc-options: -finfo-table-map -fdistinct-constructor-tables\n@\n\nTo emit the eventlog messages by the profiler, you need to run your program with the @-l@ RTS flag, for example via:\n\n@\n./\\<program\\> ... +RTS -l -RTS\n@\n\nThis will write out an eventlog to @\\<program\\>.eventlog@ which can be transformed for [speedscope.app](https://www.speedscope.app/) via the script 'ghc-stack-profiler-speedscope'.\n\n@\nghc-stack-profiler-speedscope \\<program\\>.eventlog\n@\n\nThe resulting profile @\\<program\\>.eventlog.json@ can be viewed and further analysed in [speedscope.app](https://www.speedscope.app/).\n\nNote that the results are affected by compilation optimisation options, such as @-fno-omit-yields@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
          (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
          (hsPkgs."ghc-stack-profiler-core" or (errorHandler.buildDepError "ghc-stack-profiler-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.14") (hsPkgs."ghc-experimental" or (errorHandler.buildDepError "ghc-experimental"))) ++ (if flags.use-ghc-trace-events || compiler.isGhc && compiler.version.lt "9.12"
          then [
            (hsPkgs."ghc-trace-events" or (errorHandler.buildDepError "ghc-trace-events"))
          ]
          else [
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ]);
        buildable = true;
      };
    };
  }