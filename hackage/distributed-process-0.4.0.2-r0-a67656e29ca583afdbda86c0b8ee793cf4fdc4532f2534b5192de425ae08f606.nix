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
    flags = { th = true; benchmarks = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, duncan@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Cloud Haskell: Erlang-style concurrency in Haskell ";
      description = "This is an implementation of Cloud Haskell, as described in\n/Towards Haskell in the Cloud/ by Jeff Epstein, Andrew Black,\nand Simon Peyton Jones\n(<http://research.microsoft.com/en-us/um/people/simonpj/papers/parallel/>),\nalthough some of the details are different. The precise message\npassing semantics are based on /A unified semantics for future Erlang/\nby\tHans Svensson, Lars-Åke Fredlund and Clara Benac Earle.\nYou will probably also want to install a Cloud Haskell backend such\nas distributed-process-simplelocalnet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
          (hsPkgs."rank1dynamic" or (errorHandler.buildDepError "rank1dynamic"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
        };
      exes = {
        "distributed-process-throughput" = {
          depends = (pkgs.lib).optionals (flags.benchmarks) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = if flags.benchmarks then true else false;
          };
        "distributed-process-latency" = {
          depends = (pkgs.lib).optionals (flags.benchmarks) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = if flags.benchmarks then true else false;
          };
        "distributed-process-channels" = {
          depends = (pkgs.lib).optionals (flags.benchmarks) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = if flags.benchmarks then true else false;
          };
        "distributed-process-spawns" = {
          depends = (pkgs.lib).optionals (flags.benchmarks) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = if flags.benchmarks then true else false;
          };
        };
      tests = {
        "TestCH" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        "TestClosure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }