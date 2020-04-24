{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { zkexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "distributed-process-zookeeper";
        version = "0.2.3.0";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hzk" or ((hsPkgs.pkgs-errors).buildDepError "hzk"))
          (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
          (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
          (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "boss" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process-zookeeper" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-zookeeper"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            ];
          buildable = if flags.zkexamples then true else false;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process-zookeeper" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-zookeeper"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."distributed-process-monad-control" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-monad-control"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."enclosed-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "enclosed-exceptions"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."hzk" or ((hsPkgs.pkgs-errors).buildDepError "hzk"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }