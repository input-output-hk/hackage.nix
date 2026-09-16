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
    flags = { use-ghc-trace-events = true; control = false; };
    package = {
      specVersion = "3.8";
      identifier = { name = "ghc-stack-profiler"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hannes@well-typed.com";
      author = "Hannes Siebenhandl, Wen Kokke, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "A light-weight call-stack profiler for GHC";
      description = "A light-weight call-stack profiler for GHC!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
          (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
          (hsPkgs."ghc-stack-profiler-core" or (errorHandler.buildDepError "ghc-stack-profiler-core"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.14") (hsPkgs."ghc-experimental" or (errorHandler.buildDepError "ghc-experimental"))) ++ (if flags.use-ghc-trace-events || compiler.isGhc && compiler.version.lt "9.12"
          then [
            (hsPkgs."ghc-trace-events" or (errorHandler.buildDepError "ghc-trace-events"))
          ]
          else [
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ])) ++ pkgs.lib.optional (flags.control && !system.isWindows) (hsPkgs."eventlog-socket" or (errorHandler.buildDepError "eventlog-socket"));
        buildable = true;
      };
      tests = {
        "ghc-stack-profiler-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-stack-profiler" or (errorHandler.buildDepError "ghc-stack-profiler"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }