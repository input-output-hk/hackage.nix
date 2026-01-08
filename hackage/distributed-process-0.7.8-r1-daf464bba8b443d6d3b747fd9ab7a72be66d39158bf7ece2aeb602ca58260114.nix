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
    flags = { th = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "distributed-process"; version = "0.7.8"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP, Tweag I/O Limited";
      maintainer = "The Distributed Haskell team";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "https://haskell-distributed.github.io/";
      url = "";
      synopsis = "Cloud Haskell: Erlang-style concurrency in Haskell";
      description = "This is an implementation of Cloud Haskell, as described in\n/Towards Haskell in the Cloud/ by Jeff Epstein, Andrew Black,\nand Simon Peyton Jones\n(<https://simon.peytonjones.org/haskell-cloud/>),\nalthough some of the details are different. The precise message\npassing semantics are based on /A unified semantics for future Erlang/\nby Hans Svensson, Lars-&#xc5;ke Fredlund and Clara Benac Earle.\n\nYou will probably also want to install a Cloud Haskell backend such\nas distributed-process-simplelocalnet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
          (hsPkgs."rank1dynamic" or (errorHandler.buildDepError "rank1dynamic"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ pkgs.lib.optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
      };
      benchmarks = {
        "distributed-process-throughput" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
          buildable = true;
        };
        "distributed-process-latency" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
          buildable = true;
        };
        "distributed-process-channels" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
          buildable = true;
        };
        "distributed-process-spawns" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
          buildable = true;
        };
        "distributed-process-ring" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
          buildable = true;
        };
      };
    };
  }