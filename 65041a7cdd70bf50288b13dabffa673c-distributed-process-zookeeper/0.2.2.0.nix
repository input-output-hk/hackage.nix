{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      zkexamples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "distributed-process-zookeeper";
        version = "0.2.2.0";
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
      "distributed-process-zookeeper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hzk)
          (hsPkgs.distributed-process)
          (hsPkgs.network-transport)
          (hsPkgs.network-transport-tcp)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
          (hsPkgs.network)
        ];
      };
      exes = {
        "boss" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.distributed-process-zookeeper)
            (hsPkgs.distributed-process)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.distributed-process-zookeeper)
            (hsPkgs.hspec)
            (hsPkgs.distributed-process-monad-control)
            (hsPkgs.lifted-base)
            (hsPkgs.enclosed-exceptions)
            (hsPkgs.network)
            (hsPkgs.distributed-process)
            (hsPkgs.deepseq)
            (hsPkgs.monad-control)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.transformers)
            (hsPkgs.hzk)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }