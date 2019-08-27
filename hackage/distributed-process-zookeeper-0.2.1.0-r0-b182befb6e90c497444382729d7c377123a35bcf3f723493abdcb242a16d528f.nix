let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hzk" or (buildDepError "hzk"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."network-transport" or (buildDepError "network-transport"))
          (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        };
      exes = {
        "boss" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-zookeeper" or (buildDepError "distributed-process-zookeeper"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-zookeeper" or (buildDepError "distributed-process-zookeeper"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."distributed-process-monad-control" or (buildDepError "distributed-process-monad-control"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."hzk" or (buildDepError "hzk"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }