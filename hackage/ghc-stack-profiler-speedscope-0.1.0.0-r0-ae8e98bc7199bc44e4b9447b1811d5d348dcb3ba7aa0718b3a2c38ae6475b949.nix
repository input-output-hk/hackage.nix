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
      specVersion = "3.8";
      identifier = {
        name = "ghc-stack-profiler-speedscope";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hannes@well-typed.com";
      author = "Hannes Siebenhandl, Wen Kokke, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Convert eventlog messages from `ghc-stack-profiler` into a speedscope json.";
      description = "Convert eventlog messages from `ghc-stack-profiler` into a speedscope json.\nProduce a flame graph for the RTS callstack samples obtained from a program instrumented with\n'ghc-stack-profiler'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."ghc-stack-profiler-core" or (errorHandler.buildDepError "ghc-stack-profiler-core"))
          (hsPkgs."hs-speedscope" or (errorHandler.buildDepError "hs-speedscope"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "ghc-stack-profiler-speedscope" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-stack-profiler-speedscope" or (errorHandler.buildDepError "ghc-stack-profiler-speedscope"))
          ];
          buildable = true;
        };
      };
    };
  }