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
    flags = { tcp = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process-tests"; version = "0.4.9"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process/tree/master/distributed-process-tests";
      url = "";
      synopsis = "Tests and test support tools for distributed-process.";
      description = "Tests and test suite for Cloud Haskell libraries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."rematch" or (errorHandler.buildDepError "rematch"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.4.2") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "TestCHInMemory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "TestCHInTCP" = {
          depends = (pkgs.lib).optionals (flags.tcp) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = if flags.tcp then true else false;
          };
        "TestClosure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "TestStats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "TestMx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "TestTracing" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = true;
          };
        };
      };
    }