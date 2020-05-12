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
    flags = { zkexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "distributed-process-zookeeper";
        version = "0.2.1.0";
        };
      license = "BSD-3-Clause";
      copyright = "Jeremy Huffman";
      maintainer = "jeremy@jeremyhuffman.com";
      author = "Jeremy Huffman";
      homepage = "https://github.com/jeremyjh/distributed-process-zookeeper";
      url = "";
      synopsis = "A Zookeeper back-end for Cloud Haskell.";
      description = "Provides service and node discovery for Cloud Haskell applications using\na Zookeeper cluster for name registration, lookups and leader election.\nUses the hzk bindings to the Zookeeper multi-threaded C library.\n\nObjectives and features:\n\n* Compatible with <http://hackage.haskell.org/package/distributed-process-p2p distributed-process-p2p> API - can work as a drop-in\nreplacement.\n\n* No dependencies beyond those already included by distributed-process, hzk and network-transport-tcp.\n\n* Automatic registration of local names to Zookeeper.\n\n* Global singleton processes with leader election and re-elections on leader exit.\n\n\nCheck out the <https://github.com/jeremyjh/distributed-process-zookeeper/blob/master/examples/Boss.hs example>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hzk" or (errorHandler.buildDepError "hzk"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "boss" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-zookeeper" or (errorHandler.buildDepError "distributed-process-zookeeper"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            ];
          buildable = if flags.zkexamples then true else false;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-zookeeper" or (errorHandler.buildDepError "distributed-process-zookeeper"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."distributed-process-monad-control" or (errorHandler.buildDepError "distributed-process-monad-control"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hzk" or (errorHandler.buildDepError "hzk"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }